# frozen_string_literal: true

module App
  module Operations
    class AddItem

      include ::App::Import[
                "models.item_model",
                "repositories.items_repository",
              ]

      def call(title:, body:)
        item = item_model.new(title: title, body: body)
        items_repository.create(item)
        item
      end

    end
  end
end
