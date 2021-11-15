# frozen_string_literal: true

module App
  module Operations
    class DeleteItem

      include ::App::Import[
                "repositories.items_repository",
              ]

      def call(id:)
        items_repository.delete(id)
      end

    end
  end
end
