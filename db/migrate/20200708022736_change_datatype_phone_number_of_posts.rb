class ChangeDatatypePhoneNumberOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :phone_number, :string
  end
end
