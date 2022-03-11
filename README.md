 #  vRP oxmysql Legacy driver!
_FivemM Framework vRP Bridge DB_

*Read this in other languages: [Portugues-Brasil](README_ptbr.md).*

:information_source: NOTE: The vRP oxmysql Legacy driver is compatible with versions 0.5 and 1.0 (vRPex) of the framework created by ImagicTheCat (https://github.com/vRP-framework/vRP).

## Description
vRP oxmysql driver Legacy is a driver that bridges between vRP 0.5 or 1.0 and oxmysql. After the huge amount of drivers that try to bridge with outdated oxmysql, I took the initiative to update and develop a driver that meets the latest version of oxmysql.

Oxmysql is an alternative to the unmaintained mysql-async/ghmattimysql resources, utilising node-mysql2 rather than mysqljs.

## Documentation

###### **Requirements**

- oxmysql >= 2.0.1;

###### **Installation**

1. Download the Release of [**oxmysql**](https://github.com/overextended/oxmysql/releases) (Tested: oxmysql: >=2.0.1 - <=2.1.1);
2. Move the `vrp_oxmysql` and `oxmysql` folders to the `resource` folder on the server;
3. Go to `cfg/base.lua` and change the name of the driver to be loaded by the framework.
```
local cfg = {}

cfg.db = {
  driver = "oxmysql",
  host = "",
  database = "",
  user = "",
  password = ""
}

return cfg
```
:information_source: NOTE: The vRP database configuration is not supported; oxmysql configuration must be used instead.

4. Add the following line to the server's configuration file with your connection details:
```
set mysql_connection_string "mysql://root:12345@localhost/database?multipleStatements=true"
```
5. Start the server;


###### **Configuration optional**

According to the documentation of [**oxmysql**](https://overextended.github.io/oxmysql/) some resources like the library can be used to facilitate development:
- Query time warning: `set mysql_slow_query_warning 150`
- DB interactions: `set mysql_debug true`
- Enable UI: `set mysql_ui true`

:information_source: NOTE: `mysql` command enable UI.

## Credits, contact and comercial
**Do not remove author credits.**

**KokeroO - Discord: Kokero#3996**

## License
  ```
  vRP oxmysql Legacy driver
  Copyright (C) 2022  KokeroO - Discord: Kokero#3996

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Affero General Public License as published
  by the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Affero General Public License for more details.

  You should have received a copy of the GNU Affero General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
  ```
