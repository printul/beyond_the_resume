class AddColumnsToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :is_active?, :boolean, default: true
    add_column :postings, :views, :integer, default: 0
  end
end
