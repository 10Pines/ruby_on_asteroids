# frozen_string_literal: true

require_relative "ruby_on_asteroids/version"

# I'm the root module of the gem. I provide useful methods to enable enhancements
module RubyOnAsteroids
  class Error < StandardError; end

  # Apply patches to the String class to enhance it by adding new methods
  def enhance_strings
    require "ruby_on_asteroids/core_ext/string/accessing"

    String.include RubyOnAsteroids::CoreExt::String::Accessing
  end
  module_function :enhance_strings

  # Apply patches to the Array class to enhance it by adding new methods
  def enhance_arrays
    require "ruby_on_asteroids/core_ext/array/accessing"

    Array.include RubyOnAsteroids::CoreExt::Array::Accessing
  end
  module_function :enhance_arrays

  # Apply all the available patches to enhance classes buy adding new methods to them
  def enable_all_enhancements
    enhance_strings
    enhance_arrays
  end
  module_function :enable_all_enhancements
end
