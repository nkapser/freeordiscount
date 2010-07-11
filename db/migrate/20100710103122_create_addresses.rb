class CreateAddresses < ActiveRecord::Migration
  def self.up
      create_table :addresses do |t|
        t.string :address_line1
        t.string :address_line2
        t.integer :zipcode
      end
  end

  def self.down
    drop_table :addresses
  end
end
