class Location < ActiveRecord::Base
  has_many :business_units
  validates_presence_of :city, :area
end
