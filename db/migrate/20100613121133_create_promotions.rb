class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.string :name
      t.string :message
      t.string :description
      t.datetime :start_date, :end_date
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
