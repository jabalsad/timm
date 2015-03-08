class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.datetime :last_checkin_time
      t.timestamps null: false
    end
  end
end
