# frozen_string_literal: true

ENV["APP_ENV"] ||= "development"

require "rubygems"
require "bundler"
Bundler.setup(:default, ENV["APP_ENV"])
