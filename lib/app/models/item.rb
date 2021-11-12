# frozen_string_literal: true

require "dry-struct"

module App
  module Models
    class Item < Dry::Struct

      transform_keys(&:to_sym)

      attribute :id, Types::String.default(SecureRandom.uuid.freeze)
      attribute :title, Types::String
      attribute :body, Types::String.optional

    end
  end
end
