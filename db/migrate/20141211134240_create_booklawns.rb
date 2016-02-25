class CreateBooklawns < ActiveRecord::Migration
  def change
    create_table :booklawns do |t|
      t.string :availability
      t.string :lawnname
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
