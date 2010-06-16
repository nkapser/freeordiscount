class CreateLocationBasedPromotions < ActiveRecord::Migration
  def self.up
    create_table :location_based_promotions do |t|
      t.integer :location_id
      t.integer :category_id
      t.integer :promotion_id
    end
  end

  def self.down
    drop_table :location_based_promotions
  end
end
