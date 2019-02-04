# frozen_string_literal: true

require "digest/md5"

module JekyllIncludeCache
  class Env < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{`env`}"
    end
  end
end
