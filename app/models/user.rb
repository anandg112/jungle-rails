class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true, case_sensitive: false
  validates :first_name, presence: true
  validates :last_name, presence: true
end
