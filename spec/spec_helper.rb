require 'rspec'
require 'guard/protobuf'
ENV['GUARD_ENV'] = 'test'

RSpec.configure do |config|
  config.color_enabled = true
end
