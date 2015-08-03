class AddForeignKeyToSongFromComposer < ActiveRecord::Migration
  def change
  	add_foreign_key :songs, :composers
  end
end
