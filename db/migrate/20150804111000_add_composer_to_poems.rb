class AddComposerToPoems < ActiveRecord::Migration
  def change
    add_reference :poems, :composer, index: true
    add_foreign_key :poems, :composers
  end
end
