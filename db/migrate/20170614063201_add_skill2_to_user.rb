class AddSkill2ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skill2, :string
  end
end
