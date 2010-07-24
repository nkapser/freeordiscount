class Location < ActiveRecord::Base
  has_many :business_units
  validates_presence_of :city, :area

  def self.fetch_all_promotions(location, city, category)
    location = find(:first, :conditions => ["area = ? and city = ?", location, city])
    results = location.business_units.map { |business_unit|
      business_unit.categories.find_by_name(category)
    } unless location.nil?
    results = [] if results.nil?
  end
end
