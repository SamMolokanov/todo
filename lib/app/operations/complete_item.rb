# frozen_string_literal: true

module App
  module Operations
    class CompleteItem

      include ::App::Import[
                "repositories.items_repository",
              ]

      def call(id:)
        items_repository.update(id, done: true)
      end

    end
  end
end
