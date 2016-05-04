class Order < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :group
  belongs_to :owner, class_name: "User",
                     foreign_key: "owner_id"
  has_many :users, through: :purchasers
  has_many :purchasers
end
