ENV["RACK_ENV"] = "test"

require '../app/server'

Capybara.app = Sinatra::Application.new

# making web app on test environment.