class CreateLawngrounds < ActiveRecord::Migration
  def change
    create_table :lawngrounds do |t|
      t.string :name

      t.timestamps
    end
  end
end
