class Category < ApplicationRecord
  has_many :duties
  belongs_to :user
end
