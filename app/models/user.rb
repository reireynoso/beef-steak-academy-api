class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  has_many :lists
  has_many :courses, through: :lists
  has_many :tasks, through: :lists
end
