# frozen_string_literal: true

require_relative "boot"

require "pathname"
require "zeitwerk"

loader = Zeitwerk::Loader.new
project_root = File.expand_path("..", __dir__)
loader.push_dir Pathname(project_root).join("lib").realpath

loader.setup
