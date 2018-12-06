class ImageSerializer < ActiveModel::Serializer
  attributes :id, :date, :caption, :url, :user_id
  has_one :user
end
