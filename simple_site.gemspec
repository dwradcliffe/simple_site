# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_site/version'

Gem::Specification.new do |gem|
  gem.name          = "simple_site"
  gem.version       = SimpleSite::VERSION
  gem.authors       = ["David Radcliffe"]
  gem.email         = ["radcliffe.david@gmail.com"]
  gem.description   = %q{Helps build simple websites using haml and sass. Compresses your js. Deploys to AWS S3.}
  gem.summary       = %q{Simple website builder.}
  gem.homepage      = "https://github.com/dwradcliffe/simple_site"
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'yard'

  gem.add_dependency 'rake', '>= 0'
  gem.add_dependency 'haml', '>= 0'
  gem.add_dependency 'sass', '>= 0'
  gem.add_dependency 'uglifier', '>= 0'
  gem.add_dependency 'guard', '>= 0'
  gem.add_dependency 'rb-inotify', '>= 0'
  gem.add_dependency 'rb-fsevent', '>= 0'
  gem.add_dependency 'rb-fchange', '>= 0'
  gem.add_dependency 'growl', '>= 0'
  gem.add_dependency 'guard-shell', '>= 0'
  gem.add_dependency 'aws-s3', '>= 0'
end
