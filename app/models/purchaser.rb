class Purchaser < ActiveRecord::Base
  belongs_to :user
  belongs_to :order

  has_many :meals_lists
  has_many :meals, through: :meals_lists
end
