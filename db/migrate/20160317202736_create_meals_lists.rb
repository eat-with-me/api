class CreateMealsLists < ActiveRecord::Migration
  def change
    create_table :meals_lists do |t|
      t.references :purchaser, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
