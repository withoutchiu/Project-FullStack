class Hero < ApplicationRecord
  belongs_to :primary_attribute

  validates :name, :localized_name, :attack_type, :legs, presence: true
  validates :name, :localized_name, uniqueness:true
  validates :legs, numericality:{only_integer:true}

end
