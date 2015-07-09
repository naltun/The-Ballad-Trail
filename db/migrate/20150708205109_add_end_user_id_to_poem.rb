class AddEndUserIdToPoem < ActiveRecord::Migration
  def change
    add_column :poems, :end_user_id, :integer
  end
end
