class Role < ApplicationRecord
  has_many :users, through: :user_roles
  has_many :user_roles

  class << self
    def names
      pluck(:name)
	end
  end
end
