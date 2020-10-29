class CreateHeroRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :hero_roles do |t|
      t.string :role

      t.timestamps
    end
  end
end
