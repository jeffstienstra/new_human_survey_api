# Gives RSpec access to the factory_bot methods for testing

require "factory_bot"
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
