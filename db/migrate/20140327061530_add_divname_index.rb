class AddDivnameIndex < ActiveRecord::Migration
  def change
  	add_index :divisions, :divname, unique: true
  end
end
