# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "jekyll-include-cache/version"

Gem::Specification.new do |s|
  s.name          = "jekyll-include-cached"
  s.version       = JekyllIncludeCache::VERSION
  s.authors       = ["Ben Balter"]
  s.email         = ["ben.balter@github.com"]
  s.homepage      = "https://github.com/benbalter/jekyll-include-cache"
  s.summary       = "A Jekyll plugin to cache the rendering of Liquid includes"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_dependency "jekyll", "~> 3.3"
  s.add_development_dependency "rspec", "~> 3.5"
  s.add_development_dependency "rubocop", "~> 0.51"
end
