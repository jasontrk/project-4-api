class DislikedMedium < ApplicationRecord
  self.table_name = "dislikes"
  belongs_to :user
  belongs_to :medium
end
