# frozen_string_literal: true

module App
  module Api
    module_function

    def add_item(title:, body:)
      [title, body]
    end
  end
end
