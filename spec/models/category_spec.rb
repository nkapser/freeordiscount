require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class CategorySpec
  describe Category do
    it "should test associations" do
      should have_and_belong_to_many :business_units
      should have_many :promotions
    end
  end
end
