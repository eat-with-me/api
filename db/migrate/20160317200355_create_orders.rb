class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.time :closing_time
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
