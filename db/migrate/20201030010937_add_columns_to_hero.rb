class AddColumnsToHero < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :img, :string
    add_column :heros, :icon, :string
    add_column :heros, :base_health, :integer
    add_column :heros, :base_health_regen, :integer
    add_column :heros, :base_mana, :integer
    add_column :heros, :base_mana_regen, :integer
    add_column :heros, :base_armor, :integer
    add_column :heros, :base_mr, :integer
    add_column :heros, :base_attack_min, :integer
    add_column :heros, :base_attack_max, :integer
    add_column :heros, :base_str, :integer
    add_column :heros, :base_agi, :integer
    add_column :heros, :base_int, :integer
    add_column :heros, :str_gain, :integer
    add_column :heros, :agi_gain, :integer
    add_column :heros, :int_gain, :integer
    add_column :heros, :attack_range, :integer
    add_column :heros, :projectile_speed, :integer
    add_column :heros, :attack_rate, :integer
    add_column :heros, :move_speed, :integer
    add_column :heros, :turn_rate, :integer
    add_column :heros, :cm_enabled, :string
  end
end
