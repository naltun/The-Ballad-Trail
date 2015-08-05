class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type
      t.references :end_user, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :end_users
    add_index :comments, [:commentable_id, :commentable_type]
  end
end