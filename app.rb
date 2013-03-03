#encoding: utf-8
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

def sanitize(sql_query)
  sql_query[0..22].downcase.split('').each.select {|w| w =~ /[a-z]|[áéíóúü]/i}.join('') 
end



class SinatraAPI < Sinatra::Base
  configure :development do
    set :database, "sqlite3:///db.sqlite3"
  end
  
  before do 
    content_type :json
  end

  get '/id/:id' do
    Agency.find_by_ref_number(params[:id]).to_json
  end

  get '/all' do
    Agency.all.to_json
  end

  get '/search/:name' do
    q = "%#{sanitize(params[:name])}%"
    data = Agency.where('lower(agency_name) LIKE ?', q)
    data.to_json
  end

  get '/' do
    'Hello World'
    # erb :home 
  end
end

__END__