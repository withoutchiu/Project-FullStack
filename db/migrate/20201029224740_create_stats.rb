class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.string :img
      t.string :icon
      t.integer :base_health
      t.integer :base_health_regen
      t.integer :base_mana
      t.integer :base_mana_regen
      t.integer :base_armor
      t.integer :base_mr
      t.integer :base_attack_min
      t.integer :base_attack_max
      t.integer :base_str
      t.integer :base_agi
      t.integer :base_int
      t.integer :str_gain
      t.integer :agi_gain
      t.integer :int_gain
      t.integer :attack_range
      t.integer :projectile_speed
      t.integer :attack_rate
      t.integer :move_speed
      t.integer :turn_rate
      t.string :cm_enabled
      t.references :heroes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
