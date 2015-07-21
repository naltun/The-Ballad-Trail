class AddAttachmentMedialinkToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :medialink
    end
  end

  def self.down
    remove_attachment :songs, :medialink
  end
end
