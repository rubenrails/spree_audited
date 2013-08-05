# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_audited'
  s.version     = '2.0.3'
  s.summary     = 'Log changes to your spree orders and shipments'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Ruben Ascencio'
  s.email     = 'galateaweb@gmail.com'
  s.homepage  = 'http://www.spreecommerce.com'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_api>, [">= 0"])
      s.add_runtime_dependency(%q<spree_backend>, [">= 0"])
      s.add_runtime_dependency(%q<spree_core>, [">= 2.0.3"])
      s.add_runtime_dependency(%q<audited-activerecord>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<spree_api>, [">= 0"])
      s.add_dependency(%q<spree_backend>, [">= 0"])
      s.add_dependency(%q<spree_core>, [">= 2.0.3"])
      s.add_dependency(%q<audited-activerecord>, ["~> 3.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_api>, [">= 0"])
    s.add_dependency(%q<spree_backend>, [">= 0"])
    s.add_dependency(%q<spree_core>, [">= 2.0.3"])
    s.add_dependency(%q<audited-activerecord>, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
