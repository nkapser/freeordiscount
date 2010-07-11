require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Address do
  it "should one business unit" do
    should have_one :business_unit
  end
end

