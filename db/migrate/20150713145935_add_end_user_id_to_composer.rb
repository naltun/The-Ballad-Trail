class AddEndUserIdToComposer < ActiveRecord::Migration
  def change
  	add_column :composers, :end_user_id, :integer
  end
end
