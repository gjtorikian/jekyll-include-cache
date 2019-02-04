# frozen_string_literal: true

require "jekyll"

module JekyllIncludeCache
  autoload :Tag, "jekyll-include-cache/tag"
  autoload :Env, "jekyll-include-cache/env"

  class << self
    def cache
      @cache ||= {}
    end

    def reset
      @cache = {}
    end
  end
end

Liquid::Template.register_tag("include_cached", JekyllIncludeCache::Tag)
Liquid::Template.register_tag("include_env", JekyllIncludeCache::Env)

Jekyll::Hooks.register :site, :pre_render do |_site|
  JekyllIncludeCache.reset
end
