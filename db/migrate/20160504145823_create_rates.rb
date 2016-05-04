class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :amount
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
