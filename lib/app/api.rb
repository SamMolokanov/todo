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

    def delete_item(id:)
      App::Operations::DeleteItem.new.call(id: id)
    end

    def delete_all
      App::Operations::DeleteAll.new.call
    end

    def complete_item(id:)
      App::Operations::CompleteItem.new.call(id: id)
    end
  end
end
