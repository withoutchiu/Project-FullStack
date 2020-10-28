class Hero < ApplicationRecord

  validates :id, :name, :localized_name, :primary_attr, :attack_type, :roles/0, :roles/1, :roles/2, :legs, :roles/3, :roles/4, :roles/5
  validates :id, :name, :localized_name, uniqueness:true
  validates :id, :legs,  numericality: { only_integer:true }
end
