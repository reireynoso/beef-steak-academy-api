class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :subject, :img_url, :assignments
end
