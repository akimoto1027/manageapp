class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :genre
      t.string :name
      t.string :company
      t.integer :phone_number
      t.string :email
      t.string :others
      t.timestamps
    end
  end
end
