class AddTitleToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :title, :string
  end
end
