ActiveRecord::Base.establish_connection(
    adapter:  'sqlite3',
    database: 'db.sqlite3',
    host:     'localhost', )


class Agency < ActiveRecord::Base
  validates_uniqueness_of :agency_id
  validates_presence_of :agency_id
end