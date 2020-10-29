class HeroRole < ApplicationRecord
  validates :role, presence:true, uniqueness:true
end
