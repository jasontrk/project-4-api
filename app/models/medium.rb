class Medium < ApplicationRecord
  # has_many :users
    # has_many :saved_medium
    # has_many :users, :through => :saved_medium
    #
    # has_many :like
    # has_many :users, :through => :like
    #
    # has_many :dislike
    # has_many :users, :through => :dislike
    # has_and_belongs_to_many :users, join_table: "likes"

    has_many :liked_medium
    has_many :likers, through: :liked_medium, source: :user

    has_many :disliked_media
    has_many :dislikers, through: :disliked_media, source: :user

    has_many :saved_medium
    has_many :savers, through: :saved_medium, source: :user
end
