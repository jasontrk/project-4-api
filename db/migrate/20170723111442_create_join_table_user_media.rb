class CreateJoinTableUserMedia < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :media, table_name: :saved_medium do |t|
      t.index [:user_id, :medium_id]
      t.index [:medium_id, :user_id]
    end
  end
end
