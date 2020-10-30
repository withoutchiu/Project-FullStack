class Role < ApplicationRecord
  has_many :hero_roles
  has_many :heroes, through: :hero_roles
  validates :name, presence: true, uniqueness:true
end
