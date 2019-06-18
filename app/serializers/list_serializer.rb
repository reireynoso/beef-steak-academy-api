class ListSerializer < ActiveModel::Serializer
  attributes :id, :tasks, :course
end
