class PrimaryAttribute < ApplicationRecord
  has_many :heroes

  validate :name, presence:true, uniqueness:true
end
