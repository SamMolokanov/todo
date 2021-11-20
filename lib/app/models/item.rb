# frozen_string_literal: true

require "dry-struct"

module App
  module Models
    class Item < Dry::Struct

      transform_keys(&:to_sym)

      attribute :id, Types::String.default(proc { SecureRandom.uuid }.freeze)
      attribute :title, Types::String
      attribute :body, Types::String.optional

      def ==(other)
        other.class == self.class && other.attributes == attributes
      end

    end
  end
end
