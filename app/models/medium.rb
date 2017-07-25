class Medium < ApplicationRecord
  # belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :likes, class_name: "User", join_table: "likes", before_add: :check_for_liked
  has_and_belongs_to_many :dislikes, class_name: "User", join_table: "dislikes", before_add: :check_for_disliked
  has_and_belongs_to_many :saves, class_name: "User", join_table: "saves", before_add: :check_for_saved

  def check_for_liked(user)
    raise 'User has already liked' if likes.include? user
    raise 'User cannot like AND dislike' if dislikes.include? user
  end

  def check_for_disliked(user)
    raise 'User has already disliked' if dislikes.include? user
    raise 'User cannot like AND dislike' if likes.include? user
  end

  def check_for_saved(user)
    raise 'User has already saved' if saves.include? user
  end
end
