class Eventimage < ActiveRecord::Migration
  def change
  	remove_column(:events, :eventimage)
  end
end
