# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/http_sample/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-http_sample"
  spec.version       = Ruboty::HttpSample::VERSION
  spec.authors       = ["hkdnet"]
  spec.email         = ["hkdnet@users.noreply.github.com"]

  spec.summary       = 'Sample ruboty http server'
  spec.description   = 'Sample ruboty http server with sinatra. This will work on heroku.'
  spec.homepage      = 'https://github.com/hkdnet/ruboty-http_sample'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty", "~> 1.3"
  spec.add_dependency "sinatra", "~>1.4"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end