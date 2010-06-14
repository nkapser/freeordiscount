class User < ActiveRecord::Base
    acts_as_authentic

  has_many :promotions, :dependent => :destroy
  has_many :business_units, :dependent => :destroy
end
