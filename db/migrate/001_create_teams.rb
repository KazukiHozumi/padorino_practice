class CreateTeams < ActiveRecord::Migration[5.2]
  def self.up
    create_table :teams do |t|
      t.string :name
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :teams
  end
end
