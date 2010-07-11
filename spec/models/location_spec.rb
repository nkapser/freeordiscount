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

    it "should fetch all the promotions from that location" do
      user = User.new(:email => "test@email.com", :password => "asdf123", :password_confirmation => "asdf123")
      user.save!

      category = Category.create!(:name => "shoes")

      business = BusinessUnit.new(:name => "Shoppers Stop", :description => "Some desc", :location => Location.new(:area => "koramangala", :city => "bangalore"), :categories => [category])
      user.business_units = [business]
      user.promotions = [Promotion.new(:name => "Diwali Offer", :message => "40% flat discount on apprels", :business_unit => business, :start_date => Time.now, :end_date => Time.now + 5000)]

      user.save!

      results = Location.fetch_all_promotions("koramangala", "bangalore", "shoes")
      results.count.should == 1
    end
  end
end
