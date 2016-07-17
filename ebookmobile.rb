require "grape"
require "grape/activerecord"

Dir["./models/**.*"].each {|file| require file }

Grape::ActiveRecord.configure_from_file! "config/database.yml"

module Ebookmobile
  class API < Grape::API

    resource :authors do 
      desc "Return a list of authors"
      get do 
        Author.all.to_json
      end

      desc "Add a new author to the database"
      post do 
        params = JSON.parse(request.body.read, symbolize_names: true).fetch(:author)

        @author = Author.create!(params)

        status 200
        @author.to_json
      end
    end
  end
end