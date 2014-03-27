class AddDivAssocIndex < ActiveRecord::Migration
  def change
  	add_index :divisions, :competition_id, unique: false
  end
end
