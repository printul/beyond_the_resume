class AddSkill1ToUser < ActiveRecord::Migration[5.0]
    def change
    add_column :users, :skill1, :string
  end
end
