class DivisionAssociation < ActiveRecord::Migration
  def change
  	add_column :divisions, :competition_id, :integer
  end
end
