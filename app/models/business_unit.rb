class BusinessUnit < ActiveRecord::Base
  has_and_belongs_to_many :categories

  has_many :promotions

  belongs_to :location
  belongs_to :user


  def location_attribs=(attribs)
    self.location = Location.new(attribs)
  end

end
