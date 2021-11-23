# frozen_string_literal: true

module App
  module Operations
    class AllItems

      include ::App::Import["repositories.items_repository"]

      def call
        items_repository.all
      end

    end
  end
end
