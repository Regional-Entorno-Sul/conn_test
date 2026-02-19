cls
@echo on
@echo **************************************************************************
@echo run_psqlX - versao 1.1 - 19/02/2026
@echo Executa acoes no banco de dados do SINAN NET versao 5.0 patch 5.3.
@echo **************************************************************************
@echo sintaxe - run_psqlX [Host]
@echo Se a conexao estiver ok, devera aparecer o local de instalacao, o numero
@echo de versao do SINAN NET e o registro da atualizacao do sistema.
@echo Exemplo run_psqlX 10.239.55.16
@echo Resultado: RS - ENTORNO SUL - 5.0.0.0 - Versao 5.0.0.0 / Patch 5.3.0.0
@echo **************************************************************************
@echo off
cd\
cd conn_test
set pgpassword=
set Host=%1%
psql -h %Host% -p 5445 -U postgres -d sinanpop62 -c "select ds_instalacao,no_versao,ds_atualizacao from dbsinan.tb_configuracao;"
pause