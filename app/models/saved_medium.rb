class SavedMedium < ApplicationRecord
  self.table_name = "saved_medium"
  belongs_to :user
  belongs_to :medium
end
