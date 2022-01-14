# frozen_string_literal: true

module RubyOnAsteroids
  module CoreExt
    module String
      # Useful extensions to String class related to accessing the string content
      module Accessing
        # Returns a new String object without the last character of the original one.
        # When the String is empty, returns an empty String
        def but_last
          self[0..-2]
        end
      end
    end
  end
end
