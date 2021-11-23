# frozen_string_literal: true

module App
  module Operations
    class DeleteAll

      include ::App::Import[
                "repositories.items_repository",
              ]

      def call
        items_repository.delete_all
      end

    end
  end
end
