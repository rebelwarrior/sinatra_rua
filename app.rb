# app.rb
require 'sinatra/base'
require 'active_record'
require 'sinatra/activerecord'
require 'sqlite3'
require 'json'
## Implement JSONP for security next
# require 'rack/contrib/jsonp'
# use Rack::JSONP

ActiveRecord::Base.establish_connection(
    adapter:  'sqlite3',
    database: 'db.sqlite3',
    host:     'localhost', )


class Agency < ActiveRecord::Base
  validates_uniqueness_of :agency_id
  validates_presence_of :agency_id
end

class SinatraAPI < Sinatra::Base
  configure :development do
    set :database, "sqlite3:///rua.db"
  end
  
  before do 
    content_type :json
  end

  get '/id/:id' do
     data = nil
     data = Agency.find(params[:id]).to_json
     data.to_json
  end

  get '/all' do
    Agency.all.to_json
  end


  get '/agency/:name' do
    # data = Agency.find("agency_name", params[:name])
    # data.to_json
  end

  get '/' do
    'Hello World'
  end
end

