class AddForeignKeyToPoemFromPlace < ActiveRecord::Migration
  def change
  	add_foreign_key :poems, :places
  end
end
