class AddTeamIndices < ActiveRecord::Migration
  def change
  	add_index :teams, :competition_id, unique: false
  	add_index :teams, :division_id, unique: false
  end
end
