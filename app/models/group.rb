class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :orders

  before_create :generate_token

  def generate_token
    self.token = SecureRandom.hex
  end
end
