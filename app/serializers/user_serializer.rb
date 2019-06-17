class UserSerializer < ActiveModel::Serializer
  has_many :lists
  has_many :courses, through: :lists
  has_many :tasks, through: :lists
  attributes :id, :first_name, :last_name, :bio, :img_url, :email
end
