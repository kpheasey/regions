require 'factory_girl_rails'

FactoryGirl.definition_file_paths << File.join(File.dirname(__FILE__), '..', 'factories')
FactoryGirl.reload

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end