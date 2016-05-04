class Meal < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :meal_type
  has_many :meals_lists
  has_many :purchasers, through: :meals_lists
end
