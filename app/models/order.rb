class Order < ActiveRecord::Base
  belongs_to :restaurant
  has_many :users, through: :purchasers
  has_many :purchasers
end
