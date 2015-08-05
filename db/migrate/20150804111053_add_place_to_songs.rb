class AddPlaceToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :place, index: true
    add_foreign_key :songs, :places
  end
end
