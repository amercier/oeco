require 'factory_girl_rails'
require 'database_cleaner'

RSpec.configure do |config|

  # Include FactoryGirl so we can use 'create' instead of 'FactoryGirl.create'
  config.include FactoryGirl::Syntax::Methods

  # Clean databases
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
