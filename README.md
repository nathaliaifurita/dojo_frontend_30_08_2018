#dojo_frontend QA Sampa Meeting - 30/08/2018

Repositório utilizado no Dojo de frontend do QA Sampa Meeting dia 30/08/2018

################################## INSTALAÇÃO ###############################
Pré-requisitos:
- vscode
- ruby - 2.3.1 ou superior
- Git

Gems usadas no projeto:
- cucumber
- capybara - versão '2.18.0' #o site_prism está com um bug na versao 2.13 e só essa funciona
- rspec
- site_prism versão '2.12'
- chromedriver

Passo a passo da instalação
1. Instalar ruby 
2. Comando: "ruby --version" para verificar a versão do Ruby
3. git clone https://github.com/nathaliaifurita/dojo_frontend.git
4. gem install bundler (no cmd) - Instalar o gerenciador de dependências
5. bundle install - instalar as dependências do Gemfile

####################### NAVEGAÇÃO DO CMD #####################################

cd <nomedapasta> - para entrar na pasta
cd .. - para sair da pasta atual e voltar uma pasta na raiz
pwd - para saber qual a sua localização
ll - para verificar arquivos/pastas

####################### BAIXAR O PROJETO NO GITHUB ############################

Se não tiver o projeto na máquina, navegue até a pasta que deseja criar:
git clone https://github.com/nathaliaifurita/dojo_frontend.git

Se já tiver o projeto na máquina, navegue até a pasta do projeto:
git pull origin master

####################### CRIAR UMA NOVA FEATURE ################################

Passo a passo para fazer uma nova feature NO projeto
1. Criar um novo arquivo .feature dentro da pasta featuresaver
2. Escrever o bdd em linguagem gherkin (sem esquecer o #language: pt no inicio da pagina)
3. Salvar projeto
4. No cmd digitar: cucumber features/nomedafeature.feature
5. Copiar o código gerado e colar no novoarquivo_steps.rb na step_definitions

####################### CRIAR UM NOVO PROJETO ################################

Navegar até a pasta do projeto e executar o comando:
cucumber --init (este comando irá criar a árvore de pastas que uma automação cucumber deve conter)

####################### INCLUIR PROJETO NOVO NO GIT ############################

Passo a passo
1. Criar usuário e senha no github/gitlab
2. Instalar o git na máquina
3. git --config (fazer as configurações de conta do git na maquina)
Navegar até a pasta do projeto e executar o comando:
git --init (irá conectar o seu github na pasta do projeto)

Adicionar alterações:
1. git status (verificar o status das alterações)
2. git add . (adicionar todos os arquivos)
2. git add nomedoarquivo (adicionar arquivo)
3. git commit -m"Adicionar o comentario aqui sobre o que realmente foi alterado"
4. git push origin nomedabranch

####################### EXECUTAR O PROJETO ####################################

Na pasta do seu projeto executar:
cucumber
cucumber features/nomedafeature.feature (para executar apenas uma feature)
