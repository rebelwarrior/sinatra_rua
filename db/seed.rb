require 'active_record'
require 'sinatra/activerecord'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
    adapter:  'sqlite3',
    database: 'db.sqlite3',
    host:     'localhost', )


Agency.create(:ref_number => 01, :agency_name => "Dept of Redundancy", :agency_location => "Nowhere")