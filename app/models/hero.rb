class Hero < ApplicationRecord
  belongs_to :primary_attribute

  validates :name, :localized_name, :primary_attr_id, :attack_type, :legs, presence: true
  validates :name, :localized_name, uniqueness:true
  validates :legs, :primary_attr_id, numericality:{only_integer:true}

end
