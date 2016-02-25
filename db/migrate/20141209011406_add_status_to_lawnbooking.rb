class AddStatusToLawnbooking < ActiveRecord::Migration
  def change
    add_column :lawnbookings, :status_id, :integer
  end
end
