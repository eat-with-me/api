class MealsList < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :meal
end
