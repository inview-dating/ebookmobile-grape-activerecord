require "grape"
require "grape/activerecord"

Dir["./models/**.*"].each {|file| require file }

Grape::ActiveRecord.configure_from_file! "config/database.yml"

module Ebookmobile
  class API < Grape::API
  end
end