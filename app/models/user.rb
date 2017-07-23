class User < ApplicationRecord
  # has_and_belongs_to_many :user_media, as: :saved
  # has_and_belongs_to_many :user_media, class_name: "Medium", join_table: "user_media", as: :saved
  # has_many :saved_media
  # has_many :like
  # has_many :dislike
  #
  # has_many :medium, :through => :saved_medium
  # has_many :medium, :through => :like
  # has_many :medium, :through => :dislike
  # has_and_belongs_to_many :medium, join_table: "likes"
  has_many :liked_media
  has_many :likes, through: :liked_media, source: :medium

  has_many :disliked_media
  has_many :dislikes, through: :disliked_media, source: :medium

  has_many :saved_media
  has_many :saves, through: :saved_media, source: :medium
end
