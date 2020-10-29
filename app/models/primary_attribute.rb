class PrimaryAttribute < ApplicationRecord
  validate :name, presence:true, uniqueness:true
end
