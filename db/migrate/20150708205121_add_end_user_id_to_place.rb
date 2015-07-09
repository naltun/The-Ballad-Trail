class AddEndUserIdToPlace < ActiveRecord::Migration
  def change
    add_column :places, :end_user_id, :integer
  end
end
