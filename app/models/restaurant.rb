class Restaurant < ActiveRecord::Base
  has_many :meals
  has_many :orders
  has_many :rates
  accepts_nested_attributes_for :meals
end
