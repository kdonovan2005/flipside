class User < ActiveRecord::Base
  has_many :issues
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}, on: :create
end
