# frozen_string_literal: true

module RubyOnAsteroids
  module CoreExt
    module String
      # Useful extensions to String class related to accessing the string content
      module Accessing
        # Returns a copy of the original string object with the last `num_of_characters` being removed.
        # If `num_of_characters` is not provided, it defaults to removing the last character.
        # When the original string is empty, returns an empty string
        def but_last(num_of_characters = 1)
          self[0..-(1 + num_of_characters)]
        end
      end
    end
  end
end
