# app.rb
require 'sinatra/base'
require 'active_record'
require 'sinatra/activerecord'
require 'sqlite3'
require 'json'
## Implement JSONP for security next
require 'rack/contrib/jsonp'
# use Rack::JSONP
require './models.rb'

class SinatraAPI < Sinatra::Base
  configure :development do
    set :database, "sqlite3:///db.sqlite3"
  end
  
  before do 
    content_type :json
  end

  get '/id/:id' do
     Agency.find(params[:id]).to_json
  end

  get '/all' do
    Agency.all.to_json
  end


  # get '/agency/:name' do
    # data = Agency.find("agency_name", params[:name])
    # data.to_json
  # end

  get '/' do
    'Hello World'
  end
end

