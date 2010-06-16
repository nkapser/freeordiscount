class CreateBusinessUnitsCategories < ActiveRecord::Migration
  def self.up
    create_table :business_units_categories do |t|
      t.integer :business_unit_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :business_units_categories 
  end
end
