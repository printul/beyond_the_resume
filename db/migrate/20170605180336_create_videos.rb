class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.text :description
      t.references :user, foreign_key: true
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
