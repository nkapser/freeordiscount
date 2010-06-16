require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class PromotionSpec
  describe Promotion do
    it "should test association" do
      should validate_presence_of :name
      should validate_presence_of :message
      should validate_presence_of :start_date
      should validate_presence_of :end_date
    end

   it "should validate the presense of valid fields" do
     promotion = Promotion.new
     promotion.save
     promotion.errors.count.should == 4
     promotion.errors["name"].should == "can't be blank"
     promotion.errors["message"].should == "can't be blank"
     promotion.errors["start_date"].should == "can't be blank"
     promotion.errors["end_date"].should == "can't be blank"
   end

    it "should save the promotion with valid fields" do
     promotion = Promotion.new({
            :name => "Diwali Discounts 1010",
            :message => "Bumper discounts from Shoppers Stop",
            :start_date => Time.now,
            :end_date => Time.now + 2})
      promotion.save
      promotion.errors.count.should == 0
    end

    it "should validate the start and end date" do
     promotion = Promotion.new({
            :name => "Diwali Discounts 1010",
            :message => "Bumper discounts from Shoppers Stop",
            :start_date => Time.now,
            :end_date => Time.now - 12})
      promotion.save
      promotion.errors.count.should == 1
      promotion.errors["end_date"].should == "End Date cannot be before Start Date"
    end

    it "should assign mulitple categories" do

    end
  end
end
