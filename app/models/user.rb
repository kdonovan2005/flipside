class User < ActiveRecord::Base
  has_many :issues
  has_secure_password
  validates :email, presence: true, uniqueness: true, allow_nil: true

end
