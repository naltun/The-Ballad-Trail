class CreatePlaces < ActiveRecord::Migration

	
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :region
      t.string :image

      t.timestamps null: false
    end
  end
end
