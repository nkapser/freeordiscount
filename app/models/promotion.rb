class Promotion < ActiveRecord::Base
  validates_presence_of :name, :message, :start_date, :end_date

  belongs_to :user
end
