class AddInfoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :phone_number, :string
    add_column :users, :resume, :string
    add_column :users, :business?, :boolean, default: false
    add_column :users, :searchable?, :boolean, default: false
  end
end
