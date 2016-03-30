class Order < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :group
  has_many :users, through: :purchasers
  has_many :purchasers
end
