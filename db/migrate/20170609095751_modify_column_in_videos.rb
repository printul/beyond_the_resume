class ModifyColumnInVideos < ActiveRecord::Migration[5.0]
  def change
    remove_column :videos, :description, :text
    add_column :videos, :image_url, :string
  end
end
