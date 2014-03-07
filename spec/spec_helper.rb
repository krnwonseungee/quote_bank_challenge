require 'rubygems'
require File.expand_path("../../config/application", __FILE__)

RSpec.configure do |config|
  # Enable red/green coloring in STDOUT
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation # :progress, :html, :textmate
end