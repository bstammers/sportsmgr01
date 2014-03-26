class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.boolean :pointsflag
      t.boolean :setsflag
      t.boolean :mvpflag

      t.timestamps

    end
  end
end
