require 'dm-core'
require 'do_sqlite3'

## Data Mapper
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/rua.db")
class DMAgency
  include DataMapper::Resource
  property :agency_id,            Serial
  property :agency_name,          String, :length => 255
  property :agency_director_name, String, :length => 255
  
end
DataMapper.finalize
DMAgency.auto_upgrade!