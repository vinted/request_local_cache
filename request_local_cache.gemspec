# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'request_local_cache/version'

Gem::Specification.new do |spec|
  spec.name          = 'request_local_cache'
  spec.version       = RequestLocalCache::VERSION
  spec.authors       = ['Karolis Astrauka']
  spec.email         = ['admin@vinted.com']

  spec.summary       = %q{RequestLocalCache gives you per-request cache}
  spec.description   = %q{RequestLocalCache gives you per-request cache}
  spec.homepage      = 'https://github.com/vinted/request_local_cache'
  spec.licenses      = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 4.2.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
