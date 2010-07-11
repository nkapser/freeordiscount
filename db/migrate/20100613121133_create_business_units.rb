class CreateBusinessUnits < ActiveRecord::Migration
  def self.up
    create_table :business_units do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :location_id
      t.integer :address_id
    end
  end

  def self.down
    drop_table :business_units
  end
end
