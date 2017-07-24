class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.integer :tmdb_id
      t.string :name
      t.string :overview
      t.string :poster_path
      t.string :first_air_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
