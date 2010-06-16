class Promotion < ActiveRecord::Base

  has_and_belongs_to_many :categories
  belongs_to :user

  validates_presence_of :name, :message, :start_date, :end_date

  before_save :validate_start_and_end_date
  
  def validate_start_and_end_date
      errors.add :end_date, "End Date cannot be before Start Date" if (self.end_date < self.start_date)
  end
end
