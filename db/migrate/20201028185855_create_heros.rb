class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :localized_name
      t.string :primary_attr
      t.string :attack_type
      t.string :roles0
      t.string :roles1
      t.string :roles2
      t.integer :legs
      t.string :roles3
      t.string :roles4
      t.string :roles5

      t.timestamps
    end
  end
end
