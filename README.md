Olá, meu nome é Paulo Gomes e desenvolvi essa pequena automação usando o framework Capybara. Abaixo segue as instruções de como preparar o ambiente para rodar a automação desde instalar Ruby até baixar o projeto da automação.

 Configurando o Ambiente no Windows:

1 - Instale o Ruby no Windows
  - baixe em: ​http://rubyinstaller.org/downloads/​. 
  - Executar o arquivo baixado e seguir as instruções clicando em ‘next’
  - Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’. 
  - No Console, digite o comando ​ruby –v​, der tudo certo você vai ver a versão instalada. 

2 - Instale o DEVkit
  - Baixe em: http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx. exe​.
  - Acesse o diretório C:\Ruby23-x64.
  - Crie uma pasta chamada ​devKit​ e coloque o arquivo baixado dentro dessa pasta.
  - Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
  -  No Console, digite os comandos:
     > cd C:\Ruby23-x64\devkit
     > ruby dk.rb init
     > ruby dk.rb install 

3 - Instalando o Bundler
  - No prompt de comando digite:
  > gem install bundler
  
4 - Instalando ChromeDriver
  - Baixe em: ​http://chromedriver.storage.googleapis.com/index.html?path=2.25/​
  - Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin 

5 - Instalando Geckodriver
  - Baixe em: https://github.com/mozilla/geckodriver/releases/tag/v0.18.0
  - Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin 

Rodando a Automação:

1 - Faça o clone do repositorio no Git:
  > git clone <url_do_reporitorio>

2 - Instale as dependencias do projeto com o comando:
  > bundle install

3 - Por padrão a automação irá rodar em cima do browser Google Chrome, para rodar os testes digite o comando:
  > cucumber 

4 - Acessando a pasta log  é possível validar o relatorio gerado no arquivo "2020-11-08T20-44-36-03-00.html, obs.: para cada execução sera gerado um novo relatorio, o titulo sera sempre a data 'ano/mes/dia/hora'", os prints estão anexados nos cenarios para cada step executado. 

Muito Obrigado =)





