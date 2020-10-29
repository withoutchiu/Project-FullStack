class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :localized_name
      t.integer :primary_attr_id
      t.string :attack_type
      t.integer :legs
      t.references :primary_attribute, null: false, foreign_key: true

      t.timestamps
    end
  end
end
