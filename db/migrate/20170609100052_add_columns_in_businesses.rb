class AddColumnsInBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :city, :string
    add_column :businesses, :zipcode, :string
  end
end
