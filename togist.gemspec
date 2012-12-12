# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'togist/version'

Gem::Specification.new do |gem|
  gem.name          = "togist"
  gem.version       = Togist::VERSION
  gem.authors       = ["Mike Splain"]
  gem.email         = ["mike.splain@gmail.com"]
  gem.description   = %q{A simple wrapper to send something to gist & copy to clipboard on mac}
  gem.summary       = %q{A simple wrapper to send something to gist & copy to clipboard on mac}
  gem.homepage      = "http://github.com/mikesplain/togist"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "gist"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib","bin"]
end
