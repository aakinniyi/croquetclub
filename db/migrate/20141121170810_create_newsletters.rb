class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :name
      t.date :newsdate
      t.string :attachment

      t.timestamps
    end
  end
end
