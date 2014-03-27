class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :divname

      t.timestamps
    end
  end
end
