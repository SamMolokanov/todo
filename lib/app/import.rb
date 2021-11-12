# frozen_string_literal: true

require "dry/auto_inject"

module App
  Import = Dry::AutoInject(::App::AppContainer)
end
