class RemoveStuff < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :provider
    remove_column :users, :uid
    remove_column :users, :facebook_picture_url
    remove_column :users, :token
    remove_column :users, :token_expiry
  end
end
