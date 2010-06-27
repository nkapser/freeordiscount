require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class LocationSpec
  describe Location do
    it "tests associations" do
        should have_many :business_units
    end

    it "should test validations" do
        should validate_presence_of :city
        should validate_presence_of :area
    end
  end
end
