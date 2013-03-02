class CreateAgency < ActiveRecord::Migration
  def up
    create_table :agencies do |t|
      t.integer :agency_id
      t.text :agency_name
      t.text :agency_website
      t.text :agency_mail_address
      t.text :agency_location
      t.text :agency_director_name
      t.text :gps_coordinates
      t.timestamps
    end
  end

  def down
    drop_table :agencies
  end
end

