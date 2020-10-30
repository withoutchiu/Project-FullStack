class CreateHeroRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :hero_roles do |t|
      t.references :hero, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
