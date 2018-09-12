# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'joker-dmapi/version'

Gem::Specification.new do |gem|
  gem.name          = 'joker-dmapi'
  gem.version       = JokerDMAPI::Version::VERSION
  gem.authors       = 'Yuryi Kolodovskyi'
  gem.email         = 'support@tiramix.com'
  gem.homepage      = 'https://github.com/kolodovskyy/joker-dmapi'
  gem.summary       = 'Joker DMAPI client library'
  gem.license       = 'Nonstandard'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w{lib}

  gem.add_dependency 'addressable'
  gem.add_development_dependency 'bundler'
end
