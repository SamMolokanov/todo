# frozen_string_literal: true

require "dry/container"

module App
  class AppContainer

    extend Dry::Container::Mixin

    register("repositories.items_repository") do
      ::App::Repo::Items.new
    end

    register("models.item_model") do
      ::App::Models::Item
    end

    register("persistence.storage") do
      ::App::Persistence::FileStorage.new
    end

  end
end
