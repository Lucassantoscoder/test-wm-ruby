# Testes automatizados Livelo

Stacks Utilizadas : Vscode / Ruby / Cucumber / Capybara / Postman / Newman

Instalar Ruby 

Inicia bundle  : bundle init  

Instalar : bundle install  ,atualizar bundle update

Gem Usadas:

gem 'capybara'
gem 'cucumber'
gem 'selenium-webdriver'

# Executar Relatorio :

Na linha de comando da sua IDE : cucumber --format html --out=log/relatorio.html
Newman run relatorio da API : newman run (nome da colection) -r htmlextra