class AddOwnerToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :owner, index: true
  end
end
