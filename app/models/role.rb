class Role < ApplicationRecord
  validates :role, presence:true, uniqueness:true
end
