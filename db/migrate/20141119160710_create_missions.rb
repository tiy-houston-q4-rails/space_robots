class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :song
      t.string :dance
      t.string :location
      t.references :robot, index: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
