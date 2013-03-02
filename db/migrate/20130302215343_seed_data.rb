class SeedData < ActiveRecord::Migration
  def up
    Agency.create(:ref_number => 007, :agency_name => "Dept of Redundancy", :agency_location => "Nowhere")
  end

  def down
    Agency.destroy(:ref_number => 007)
  end
end
