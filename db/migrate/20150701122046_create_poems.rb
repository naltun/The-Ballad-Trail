class CreatePoems < ActiveRecord::Migration

	
  def change
    create_table :poems do |t|
      t.string :title
      t.text :description
      t.string :link
      t.text :subtitle
      t.references :place, index: true
      t.references :composer, index: true

      t.timestamps null: false
    end
  end
end
