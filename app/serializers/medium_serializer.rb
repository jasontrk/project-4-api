class MediumSerializer < ActiveModel::Serializer
  has_many :likes
  has_many :dislikes
  has_many :saves
  attributes :id, :name, :first_air_date, :overview
end
