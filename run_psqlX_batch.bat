cls
@echo on
@echo *********************************************************************************************************************
@echo run_psqlX - versao 1.0 - 18/02/2026
@echo Executa acoes no banco de dados do SINAN NET versao 5.0 patch 5.3.
@echo *********************************************************************************************************************
@echo sintaxe - run_psqlX [Host] [Porta] [Usuario] [Database] ["comando"]
@echo Exemplo run_psqlX localhost 5445
@echo postgres sinanpop62 "select ds_instalacao,no_versao,ds_atualizacao from dbsinan.tb_configuracao;"
@echo *********************************************************************************************************************
@echo off
cd\
cd conn_test
set pgpassword=
set Host=%1%
set Porta=%2%
set Usuario=%3%
set Database=%4%
psql -h %Host% -p %Porta% -U %Usuario% -d %Database% -c %5% 
pause