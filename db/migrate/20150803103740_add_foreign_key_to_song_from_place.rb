class AddForeignKeyToSongFromPlace < ActiveRecord::Migration
  def change
  	add_foreign_key :songs, :places
  end
end
