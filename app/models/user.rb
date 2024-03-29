# frozen_string_literal: true

class User < ApplicationRecord
  has_many :filters
  has_secure_password
  validates :username, presence: true, uniqueness: true
end
