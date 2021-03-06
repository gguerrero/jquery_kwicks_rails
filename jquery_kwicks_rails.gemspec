$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jquery_kwicks_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jquery_kwicks_rails"
  s.version     = JqueryKwicksRails::VERSION
  s.authors     = ["Guillermo Guerrero"]
  s.email       = ["g.guerrero.bus@gmail.com"]
  s.homepage    = "https://github.com/gguerrero/jquery_kwicks_rails"
  s.license     = 'MIT'
  s.summary     = "JQuery Sexy Sliding Panels for Rails apps"
  s.description = %(The JQuery Sexy Sliding Panels for Rails 
                    applications).strip.gsub(/\s{2,}/, ' ')

  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["test/**/*"]

  s.has_rdoc         = true
  s.extra_rdoc_files = %w[ README.md MIT-LICENSE ]
  s.rdoc_options    += %w[ --title "JQuery Sexy Sliding Panels for Rails"
                           --inline-source ]

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "jquery-rails", ">= 2.0.2"
end
