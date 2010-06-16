require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class UserSpec
  describe User do

    it  "should test associations" do
        should have_many :promotions
        should have_many :business_units
    end

  end
end
