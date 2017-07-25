class MediumSerializer < ActiveModel::Serializer
  has_many :likes
  has_many :dislikes
  has_many :saves
  attributes :id, :name, :release_date, :first_air_date, :poster_path, :overview, :genre_ids
end
