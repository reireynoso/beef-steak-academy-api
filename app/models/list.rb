class List < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :assignments, through: :course
  has_many :tasks
end
