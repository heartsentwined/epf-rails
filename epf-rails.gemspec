# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'epf/rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'epf-rails'
  gem.version       = Epf::Rails::VERSION
  gem.authors       = ['heartsentwined']
  gem.email         = ['heartsentwined.me@gmail.com']
  gem.date          = Time.now.strftime('%Y-%m-%d')
  gem.summary       = 'Epf for Rails'
  gem.description   = <<-EOS
    Epf is a robust and stable framework for syncing client state with a
    persistent backend such as a REST API or socket connection.
  EOS
  gem.homepage      = 'https://github.com/heartsentwined/epf-rails'

  gem.add_dependency 'epf-source'
  gem.add_dependency 'rails'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.license       = 'MIT'
end
