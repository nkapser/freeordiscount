class Address < ActiveRecord::Base
  has_one :business_unit  
end
