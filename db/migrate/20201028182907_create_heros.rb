class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.integer :id
      t.string :name
      t.string :localized_name
      t.string :primary_attr
      t.string :attack_type
      t.string :roles/0
      t.string :roles/1
      t.string :roles/2
      t.integer :legs
      t.stirng :roles/3
      t.string :roles/4
      t.string :roles/5

      t.timestamps
    end
  end
end
