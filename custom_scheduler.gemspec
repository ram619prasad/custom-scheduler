# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "custom_scheduler/version"

Gem::Specification.new do |spec|
  spec.name          = "custom_scheduler"
  spec.version       = CustomScheduler::VERSION
  spec.authors       = 'Ram Prasad Reddy'
  spec.email         = ["ram.prasad@introhive.com"]

  spec.summary       = "Custom scheduler gem"
  spec.description   = "Used for customising the scheduler based on client requirement"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  # spec.add_dependency "sass-rails", '~> 3.2.6'
  spec.add_dependency "bootstrap-sass", '~>3.2.0.2'
  # spec.add_dependency "twitter-bootstrap-rails"
end
