# frozen_string_literal: true

module App
  module Repo
    class Items

      include ::App::Import[
                "models.item_model",
                "persistence.storage",
              ]

      def all
        storage.read.map { |item| item_model.new(item) }
      end

      def create(new_item)
        storage.save(new_item.to_h)
      end

      def delete(id)
        storage.delete(id)
      end

      def delete_all
        storage.reset
      end

      def update(id, changeset)
        storage.update(id, changeset.transform_keys(&:to_s))
      end

    end
  end
end
