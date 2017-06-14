class AddProfessionToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profession, :string
  end
end
