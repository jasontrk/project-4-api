class AddColumnsToMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :media, :genre_ids, :integer
    add_column :media, :release_date, :string
  end
end
