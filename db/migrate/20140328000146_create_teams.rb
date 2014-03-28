class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teamname
      t.integer :competition_id
      t.integer :division_id
      t.string :teammgr
      t.integer :played
      t.integer :won
      t.integer :lost
      t.integer :tied
      t.integer :sets_won
      t.integer :sets_lost
      t.integer :points_for
      t.integer :points_against
      t.decimal :sets_percent
      t.decimal :points_percent
      t.decimal :comp_points

      t.timestamps
    end
  end
end
