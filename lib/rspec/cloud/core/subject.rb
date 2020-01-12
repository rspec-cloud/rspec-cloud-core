# frozen_string_literal: true

module RSpec
  module Cloud
    module Core
      class Subject
        def value(v = nil)
          if v.nil?
            @value
          else
            @value = v
            self
          end
        end
      end
    end
  end
end
