class LikedMedium < ApplicationRecord
  self.table_name = "likes"
  belongs_to :user
  belongs_to :medium
end
