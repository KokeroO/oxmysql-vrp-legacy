 #  vRP oxmysql Legacy driver!
_FivemM Framework vRP Bridge DB_

*Ler em outra língua: [English](README.md).*

:information_source: NOTE: The vRP oxmysql Legacy driver é compatível com vRP 0.5 and 1.0 (vRPex) do framework criado por ImagicTheCat (https://github.com/vRP-framework/vRP).

## Descrição
vRP oxmysql driver Legacy é um driver que faz a ponte entre o vRP 0.5 ou 1.0 e oxmysql. Após a enorme quantidade de drivers que tentam fazer a ponte com oxmysql desatualizado, tomei a iniciativa de atualizar e desenvolver um driver que atenda a versão mais recente do oxmysql.

Oxmysql é a alternativa para o recurso descontinuado mysql-async/ghmattimysql, utilizando node-mysql2 em vez de mysqljs.

## Documentação

###### **Requisitos**

- oxmysql >= 2.0.1;

###### **Instalação**

1. Baixe a última versão de [**oxmysql**](https://github.com/overextended/oxmysql);
2. Mova as pasta `vrp_oxmysql` e `oxmysql` para a pasta `resource` do seu servidor;
3. Vá para `cfg/base.lua` e altere o nome do driver para conexão do framework.
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
:information_source: NOTE: A configuração de DB do vRP não é suportada; A configuração de conexão do oxmysql deve ser utilizada através de `convars`.

4. Adicione a seguinte linha no arquivo de configuração do seu servidor utilizando os seguinte detalhes de conexão:
```
set mysql_connection_string "mysql://root:12345@localhost/database?multipleStatements=true"
```
5. Inicie o servidor;


###### **Configuração opcional**

De acordo com a documentação de [**oxmysql**](https://overextended.github.io/oxmysql/) alguns recursos da biblioteca podem ser ativados para facilitar o desenvolvimento:
- Aviso de tempo de consulta: `set mysql_slow_query_warning 150`
- Interações com o DB: `set mysql_debug true`
- Habilitar a UI: `set mysql_ui true`

:information_source: NOTE: O comando `mysql` ativa a UI.

## Creditos, contato e comercial
**Não remova os créditos do autor.**

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
