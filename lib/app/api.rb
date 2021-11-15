# frozen_string_literal: true

module App
  module Api
    module_function

    def add_item(title:, body:)
      App::Operations::AddItem.new.call(title: title, body: body)
    end

    def all_items
      App::Operations::AllItems.new.call
    end
  end
end
