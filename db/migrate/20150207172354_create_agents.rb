class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.references :download, index: true
      t.datetime :last_checkin_time
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :agents, :downloads
  end
end
