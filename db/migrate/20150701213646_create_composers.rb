class CreateComposers < ActiveRecord::Migration

	has_many :songs
	has_many :poems

  def change
    create_table :composers do |t|
      t.string :fname
      t.string :lname
      t.string :type
      t.text :bio

      t.timestamps null: false
    end
  end
end
