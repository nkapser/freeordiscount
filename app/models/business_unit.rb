class BusinessUnit < ActiveRecord::Base
  has_one :location

  has_and_belongs_to_many :categories

  has_many :location_based_promotions
  has_many :promotions, :through => :location_based_promotions
  
  belongs_to :user
end
