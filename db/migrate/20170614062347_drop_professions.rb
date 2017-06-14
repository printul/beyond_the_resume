class DropProfessions < ActiveRecord::Migration[5.0]
  def up
    drop_table :professions, force: :cascade
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
