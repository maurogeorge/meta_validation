require 'coveralls'
Coveralls.wear!

require "bundler/setup"
Bundler.require(:default, :development)

require "jacaranda"
require "#{File.dirname(__FILE__)}/support/schema.rb"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each do |file|
  require file
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
