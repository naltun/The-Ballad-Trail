class CreateSongs < ActiveRecord::Migration


  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.text :lyrics

      t.timestamps null: false
    end
  end
end