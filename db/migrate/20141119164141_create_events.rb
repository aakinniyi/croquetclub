class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.datetime :eventdate
      t.text :eventdescription
      t.decimal :eventprice
      t.string :eventimage

      t.timestamps
    end
  end
end
