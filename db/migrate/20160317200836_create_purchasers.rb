class CreatePurchasers < ActiveRecord::Migration
  def change
    create_table :purchasers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
