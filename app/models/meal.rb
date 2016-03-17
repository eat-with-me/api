class Meal < ActiveRecord::Base
  belongs_to :restaurant

  has_many :meals_lists
  has_many :purchasers, through: :meals_lists
end
