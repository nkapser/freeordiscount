require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

class BusinessUnitSpec
  describe BusinessUnit do
  it "tests associations" do
    should have_and_belong_to_many :categories
    should have_many :promotions
    should belong_to :user
    should belong_to :location
  end

  end
end
