class AddColumnsToApplication < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :title, :string
    add_column :applications, :description, :text
  end
end
