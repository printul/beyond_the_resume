class RenameColumnsInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :business?, :is_business?
    rename_column :users, :searchable?, :is_searchable?
  end
end
