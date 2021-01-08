class User < ApplicationRecord
  has_many :lists
  has_secure_password
  validates_presence_of :username
end
