class AddForeignKeyToPoemFromComposer < ActiveRecord::Migration
  def change
  	add_foreign_key :poems, :composers
  end
end
