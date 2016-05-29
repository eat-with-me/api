class AddDescriptionAndImageUrlToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :description, :string
    add_column :meals, :image_url, :string
  end
end
