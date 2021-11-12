# frozen_string_literal: true

require_relative "boot"

require "pathname"
require "zeitwerk"

require "pry" if ENV["APP_ENV"] == "development" || ENV["APP_ENV"] == "test"

PROJECT_ROOT = File.expand_path("..", __dir__)

loader = Zeitwerk::Loader.new
lib_folder = Pathname(PROJECT_ROOT).join("lib").realpath
loader.push_dir(lib_folder)

loader.setup
