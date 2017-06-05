class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.references :posting, foreign_key: true

      t.timestamps
    end
  end
end
