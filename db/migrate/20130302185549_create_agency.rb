class CreateAgency < ActiveRecord::Migration
  def up
    create_table :agencies do |t|
      t.integer :ref_number
      t.string :agency_name
      t.string :agency_website
      t.text :agency_mail_address
      t.text :agency_location
      t.string :agency_director_name
      t.string :gps_coordinates
      t.timestamps
    end
  end

  def down
    drop_table :agencies
  end
  
end

