class HeroRole < ApplicationRecord
  has_many :heroes

  validates :role, presence:true, uniqueness:true

end
