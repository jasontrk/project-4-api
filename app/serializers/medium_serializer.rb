class MediumSerializer < ActiveModel::Serializer
  has_many :likes
  has_many :dislikes
  has_many :faves
  belongs_to :creator
  attributes :id, :name, :release_date, :first_air_date, :poster_path, :overview, :genre_ids, :tmdb_id, :like_ids, :dislike_ids, :fave_ids

  def poster_path
    "https://image.tmdb.org/t/p/w500#{object.poster_path}"
  end
end
