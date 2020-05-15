class User < ApplicationRecord
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true
end