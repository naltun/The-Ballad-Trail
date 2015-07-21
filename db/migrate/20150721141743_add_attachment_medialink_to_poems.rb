class AddAttachmentMedialinkToPoems < ActiveRecord::Migration
  def self.up
    change_table :poems do |t|
      t.attachment :medialink
    end
  end

  def self.down
    remove_attachment :poems, :medialink
  end
end
