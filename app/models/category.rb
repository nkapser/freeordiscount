class Category < ActiveRecord::Base
  has_and_belongs_to_many :business_units

  has_many :location_based_promotions
  has_many :promotions, :through => :location_based_promotions
end
