class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :localized_name
      t.string :primary_attr
      t.string :attack_type
      t.integer :legs
      t.references :hero_role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
