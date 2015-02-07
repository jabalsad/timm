class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :path
      t.string :imdb
      t.integer :size

      t.timestamps null: false
    end
  end
end
