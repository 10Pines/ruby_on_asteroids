# frozen_string_literal: true

module RubyOnAsteroids
  module CoreExt
    module Array
      # Useful extensions to Array class related to accessing the array contents
      module Accessing
        # Returns a copy of the original array object with the last `num_of_elements` being removed.
        # If `num_of_elements` is not provided, it defaults to removing the last element.
        # When the original array is empty, returns an empty array
        def but_last(num_of_elements = 1)
          self[0..-(1 + num_of_elements)]
        end
      end
    end
  end
end
