class User < ApplicationRecord
  has_many :created_media, class_name: "Medium", foreign_key: "user_id"
  has_and_belongs_to_many :liked_media, class_name: "Medium", join_table: "likes", before_add: :check_for_liked
  has_and_belongs_to_many :disliked_media, class_name: "Medium", join_table: "dislikes", before_add: :check_for_disliked
  has_and_belongs_to_many :saved_media, class_name: "Medium", join_table: "saves", before_add: :check_for_saved

  def check_for_liked(medium)
    raise 'Already liked' if liked_media.include? medium
    raise 'Cannot like AND dislike' if disliked_media.include? medium
  end
  
  def check_for_disliked(medium)
    raise 'Already disliked' if disliked_media.include? medium
    raise 'Cannot like AND dislike' if liked_media.include? medium
  end

  def check_for_saved(medium)
    raise 'Medium already saved' if saved_media.include? medium
  end
end
