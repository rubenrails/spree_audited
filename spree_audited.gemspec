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
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.1"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<spree_api>, [">= 0"])
      s.add_dependency(%q<spree_backend>, [">= 0"])
      s.add_dependency(%q<spree_core>, ["~> 2.1"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_api>, [">= 0"])
    s.add_dependency(%q<spree_backend>, [">= 0"])
    s.add_dependency(%q<spree_core>, ["~> 2.1"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
