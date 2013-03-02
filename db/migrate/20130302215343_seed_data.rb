class SeedData < ActiveRecord::Migration
  def up
    Agency.create(:ref_number => 01, :agency_name => "Dept of Redundancy", :agency_location => "Nowhere")
  end

  def down
    
  end
end
