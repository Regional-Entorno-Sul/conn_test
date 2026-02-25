# conn_test
Testa a conexão do lado cliente com o servidor do SINAN NET.  
## A aplicação  
Esse utilitário vem do projeto SobeFicha (https://github.com/csis2/SobeFicha), usando o arquivo "run_psqlx.bat", foi feita uma adaptação que permite o usuário testar facilmente se há uma conexão do PC cliente com o servidor do SINAN NET.  
## Arquivos necessários  
Para o utilitário rodar, é necessário que o usuário crie uma pasta no disco local C com o nome "conn_test" (sem as aspas).
Depois, copiar os seguintes arquivos que estão hospedados no SINAN NET lado servidor.  
**libeay32.dll;**  
**libiconv-2.dll;**  
**libintl-8.dll;**  
**libpq.dll;**  
**ssleay32.dll;**  
**psql.exe.**  
Quando a instalação do SINAN NET servidor é realizada, por padrão é criada uma pasta do banco de dados PostgreSQL na pasta "Arquivos de Programas (x86)". Os arquivos mostrados acima que devem ser copiados para a pasta "conn_test" estão no seguinte caminho: "C:\Arquivos de Programas (x86)\PostgreSQL\9.0\bin".

## Sintaxe do executável

~~~
run_psqlX_V1.1.exe [host]
~~~

## Rodando o utilitário  
Todos os arquivos mostrados no item "Arquivos necessários" devem ser copiados para a pasta criada anteriormente pelo usuário, "conn_test" no disco local C.  
  
![x](/pictures/conn_test_pic3.jpg)
  
Depois, faça o download do executável na seção "Releases".  
Atenção! Sempre use na seção "Releases", o último release disponível.  

![x](/pictures/conn_test_pic4.jpg)  

![x](/pictures/conn_test_pic5.jpg)  

E cole o executável na pasta "conn_test", criada pelo usuário.  

![x](/pictures/conn_test_pic6.jpg)  

Entre no prompt de comando do Windows (CMD) e acesse a pasta "conn_test" que está no disco local C. Uma vez dentro da pasta, digite na linha de comando o executável que você fez o download seguido do IP do servidor do SINAN NET.  

![x](/pictures/conn_test_pic7.jpg)  

Se houver conexão efetiva com o banco de dados do SINAN NET no servidor, a tela do prompt de comando deverá ficar parecida com a mostrada abaixo, mostrando o local da instalação do sistema (ds_instalacao), número da versão do sistema (no_versao) e os dados da última atualização (ds_atualizacao).  

![x](/pictures/conn_test_pic1.jpg)  

Se ao contrário não aparecer esses dados, significa que há algum problema impedindo a conexão do PC cliente com o servidor do SINAN NET. Nesse caso, a tela de prompt de comando deverá ficar parecida com a que é mostrada abaixo.  

![x](/pictures/conn_test_pic2.jpg)  

## Créditos  
Para transformar o arquivo de formato BAT (run_psqlX_batch_versao_1.1.bat) em um arquivo no formato EXE (run_psqlX_V1.1.exe), disponibilizado na área de releases, foi utilizado o utilitário bat2exe (https://bat2exe.net/).  
Os arquivos no formato DLL e o arquivo "psql.exe" mencionados na seção "Arquivos necessários" são propriedades do PostgreSQL Global Development Group e estão sob licença do PostgreSQL License (www.postgresql.org).  
O arquivo "run_psqlx.bat" usado como modelo para criar o arquivo "run_psqlX_batch_versao_1.1.bat" vem do projeto SobeFicha (https://github.com/csis2/SobeFicha), sobe direitos do MIT license.  

