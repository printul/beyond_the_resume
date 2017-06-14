class AddVideoTokenToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :vid_token, :string
  end
end
