class AddTypeToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :meal_type, index: true, foreign_key: true
  end
end
