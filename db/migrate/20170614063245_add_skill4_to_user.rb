class AddSkill4ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skill4, :string
  end
end
