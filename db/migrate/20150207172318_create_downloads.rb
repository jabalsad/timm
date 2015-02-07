class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :status
      t.integer :bytes_downloaded
      t.integer :priority
      t.references :movie, index: true
      t.references :agent, index: true

      t.timestamps null: false
    end
    add_foreign_key :downloads, :movies
    add_foreign_key :downloads, :agents
  end
end
