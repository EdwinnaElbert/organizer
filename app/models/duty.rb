class Duty < ApplicationRecord
  belongs_to :user
  has_many :duty_occurences
  serialize :days_of_week
  serialize :days_of_month
end
