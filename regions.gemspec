$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'regions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'regions'
  s.version     = Regions::VERSION
  s.authors     = ['Kevin Pheasey']
  s.email       = ['kevin@kpheasey.com']
  s.homepage    = 'https://github.com/kpheasey/regions'
  s.summary     = 'Rails model with all Regions from Carmen.'
  s.description = 'Pre-built Rails model with all Regions from Carmen.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 4.2', '<= 6'
  s.add_dependency 'carmen', '~> 1.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
end
