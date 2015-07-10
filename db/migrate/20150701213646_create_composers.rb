class CreateComposers < ActiveRecord::Migration


  def change
    create_table :composers do |t|
      t.string :fname
      t.string :lname
      t.string :composer_type
      t.text :bio

      t.timestamps null: false
    end
  end
end
