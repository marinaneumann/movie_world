class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.integer :release_date
      t.string :cast
      t.integer :user_id
    end
  end
end
