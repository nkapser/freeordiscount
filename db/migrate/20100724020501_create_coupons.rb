class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|

      t.string :offer_code
      t.integer :promotion_id
    end
  end

  def self.down
    drop_table :coupons
  end
end
