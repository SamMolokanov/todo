# frozen_string_literal: true

module App
  class Config

    extend Dry::Configurable

    setting :persistence, reader: true do
      setting :filepath,
              default: "items.json",
              constructor: ->(filename) { Pathname(PROJECT_ROOT).join(filename) }
    end

  end
end
