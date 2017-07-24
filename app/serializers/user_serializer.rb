class UserSerializer < ActiveModel::Serializer
  has_many :created_media
  has_many :liked_media
  has_many :disliked_media
  has_many :saved_media
  attributes :id, :username, :email
end
