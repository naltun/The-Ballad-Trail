class AddPlaceToPoems < ActiveRecord::Migration
  def change
    add_reference :poems, :place, index: true
    add_foreign_key :poems, :places
  end
end
