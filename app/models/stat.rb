class Stat < ApplicationRecord
  belongs_to :heroes
  validates :img,
            :icon
            :base_health,
            :base_health_regen,
            :base_mana,
            :base_mana_regen,
            :base_armor,
            :base_mr,
            :base_attack_min,
            :base_attack_max,
            :base_str,
            :base_agi,
            :base_int,
            :str_gain,
            :agi_gain,
            :int_gain,
            :attack_range,
            :projectile_speed,
            :attack_rate,
            :move_speed,
            :turn_rate,
            :cm_enabled, presence:true
  validates :img, :icon, uniqueness:true
end
