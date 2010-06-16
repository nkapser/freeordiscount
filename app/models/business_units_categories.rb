class BusinessUnitsCategories < ActiveRecord::Base
  belongs_to :category_id
  belongs_to :business_unit_id
end
