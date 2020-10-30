class Hero < ApplicationRecord
  belongs_to :primary_attribute
  has_many :hero_roles
  has_many :roles, through: :hero_roles
  validates :name, :localized_name, :attack_type, :legs, presence: true
  validates :name, :localized_name, uniqueness:true
  validates :legs, numericality:{only_integer:true}

  def roles_list
      roles.map(&:name).join(", ")
  end
end
