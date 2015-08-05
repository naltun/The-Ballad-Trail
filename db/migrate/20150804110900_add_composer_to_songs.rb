class AddComposerToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :composer, index: true
    add_foreign_key :songs, :composers
  end
end
