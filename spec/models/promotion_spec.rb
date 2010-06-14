require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class PromotionSpec
  describe Promotion do
   it "should validate the presense of valid fields" do
     promotion = Promotion.new
     promotion.save
     promotion.errors.count.should == 4
   end    
  end
end
