class HeroRole < ApplicationRecord
  belongs_to :hero
  belongs_to :role
end
