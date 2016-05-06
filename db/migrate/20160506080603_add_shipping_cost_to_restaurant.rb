class AddShippingCostToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :shipping_cost, :float
  end
end
