class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
        t.string :city
        t.string :area
        t.string :latitude
        t.string :longitude
    end
  end

  def self.down
    drop_table :locations
  end
end
