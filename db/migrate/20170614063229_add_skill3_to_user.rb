class AddSkill3ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skill3, :string
  end
end
