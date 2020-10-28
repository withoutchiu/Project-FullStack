class Hero < ApplicationRecord
  validates :name, :localized_name, :primary_attr, :attack_type, :roles0, :roles1, :roles2, :legs, :roles3, :roles4, :roles5,  presence:true
  validates :name, :localized_name, uniqueness:true, presence:true
  validates :legs,  numericality: { only_integer:true }
end
