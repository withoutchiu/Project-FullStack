class Hero < ApplicationRecord
  belongs_to :hero_role

  validates :name, :localized_name, :primary_attr, :attack_type, :legs, presence: true
  validates :name, :localized, uniqueness:true
  validates :legs, numericality:{only_integer:true}

end
