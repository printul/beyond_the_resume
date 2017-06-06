class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name#, null: false
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :industry
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
