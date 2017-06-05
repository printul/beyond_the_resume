class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.text :description
      t.references :business, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
