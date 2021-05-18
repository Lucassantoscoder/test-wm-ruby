require  'capybara'
require  'capybara/cucumber'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

# Chrome espera elemento 20 segundos
Capybara.register_driver :chrome_timeout do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 20
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
  end