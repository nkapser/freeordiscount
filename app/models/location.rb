class Location < ActiveRecord::Base
  has_many :business_units
  validates_presence_of :city, :area

  def fetch_all_promotions(location, city, category)
    self.find(:first, :conditions => ["location = ?, city = ?", location, city]).business_units.map { |business_unit|
      business_unit.categories.find(:all, :conditions => ["category = ?", category])
      }
  end
end
