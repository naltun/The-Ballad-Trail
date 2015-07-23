class AddEndUserIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :end_user_id, :integer
  end
end
