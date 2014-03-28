class RemoveDivForeignKey < ActiveRecord::Migration
  def change
  	remove_index :competitions, :division_id
  	remove_column :competitions, :division_id
  end
end
