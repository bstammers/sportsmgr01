class AddCompAssociation < ActiveRecord::Migration
  def change
  	add_column :competitions, :division_id, :integer
  	add_index :competitions, :division_id, unique: false
  end
end
