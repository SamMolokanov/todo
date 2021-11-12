# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.7.2"

gem "dry-auto_inject", "~> 0.8.0"
gem "dry-cli", "~> 0.7.0"
gem "dry-configurable", "~> 0.13.0"
gem "dry-container", "~> 0.9.0"
gem "dry-struct", "~> 1.4.0"

gem "zeitwerk", "~> 2.5.1"

group :development do
  gem "rubocop", "~> 1.22.3", require: false
  gem "rubocop-rspec", "~> 2.6.0", require: false
end

group :test, :development do
  gem "pry"
  gem "rspec"
  gem "rspec-expectations"
end
