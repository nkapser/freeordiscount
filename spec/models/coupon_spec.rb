require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Coupon do
  it "should associations" do
    should belong_to :promotion
  end
end

