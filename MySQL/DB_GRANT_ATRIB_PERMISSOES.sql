/*1. Criar usuários
2. Implementar databases:
dev
homol
prod
3. Criar tabelas
4. Inserir registros nas tabelas

Squads
DB - DEV
Squad 1 - Lazaro - lazaroneto@localhost
          Wilker- wilkerluc@localhost          


DB - HOMOLOGAÇÃO
Squad 2 - Marcos - marcossouza@localhost
          Phelipe - phelipesantos@localhost
          Perolina - perolinasoar@localhost
          Tatiane - tatianerod@localhost


DB - PRODUÇÃO
Squad 3 - Gilson - gilsonvie@localhost
          Felipe - felipemel@localhost
          
*/

-- GERENCIAMENTO DE PERMISSÕES
-- DB - DEV
-- Squad 1 - Lazaro - lazaroneto@localhost & Wilker- wilkerluc@localhost 

CREATE USER 'gilsonvie'@'localhost' identified by '123456';
CREATE USER 'tatianerod'@'localhost' identified by '123456';
CREATE USER 'wilkerluc'@'localhost' identified by '123456';
CREATE USER 'perolinasoar'@'localhost' identified by '123456';
CREATE USER 'hudsonnes'@'localhost' identified by '123456';
CREATE USER 'marcossouza'@'localhost' identified by '123456';
CREATE USER 'jefimalmeida'@'localhost' identified by '123456';
CREATE USER 'lazaroneto'@'localhost' identified by '123456';
CREATE USER 'fernandasilva'@'localhost' identified by '123456';
CREATE USER 'phelipesantos'@'localhost' identified by '123456';
CREATE USER 'fellipemelo'@'localhost' identified by '123456';
CREATE USER 'estagiarioh'@'localhost' identified by '123456';

GRANT SELECT
ON *.*
TO lazaroneto@localhost;

GRANT SELECT
ON *.*
TO wilkerluc@localhost;

GRANT SELECT
ON dev .* 
TO estagiarioh@localhost;

-- INSERÇÃO 
GRANT INSERT
ON *.*
TO lazaroneto@localhost;

GRANT INSERT
ON *.*
TO wilkerluc@localhost;
