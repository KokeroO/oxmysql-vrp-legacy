local Proxy = module("vrp","lib/Proxy")
local vRP = Proxy.getInterface("vRP")

local function blob2string(blob)
  local data = {}
  for index,byte in ipairs(blob) do
    table.insert(data, string.char(byte))
  end

  return table.concat(data)
end

local queries = {}
function onInit(cfg)
  return MySQL ~= nil
end

function onPrepare(name, query)
  queries[name] = query
end

function onQuery(name, params, mode)
  local query = queries[name]

  local _params = { _ = true }

  for k,v in pairs(params) do
    _params["@"..k] = v
  end

  local r = async()

  if mode == "execute" then
    MySQL.update(query, _params, function (affectedRows)
      r(affectedRows or 0)
    end)
  elseif mode == "scalar" then
    MySQL.scalar(query, _params, function (result)
      r(result)
    end)
  else
    MySQL.query(query, _params, function (result)
      -- last insert id backwards compatibility
      if query:find(";.-SELECT.+LAST_INSERT_ID%(%)") then
        r({ { id = result[1].insertId } }, result[1].affectedRows)
      end

      for _,row in pairs(result) do
        for k,v in pairs(row) do
          if type(v) == "table" then
            row[k] = blob2string(v)
          end
        end
      end
      r(result, #result)
    end)
  end

  return r:wait()
end

async(function()
  vRP.registerDBDriver("oxmysql", onInit, onPrepare, onQuery)
end)