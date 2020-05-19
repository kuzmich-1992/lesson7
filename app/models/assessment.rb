class Assessment < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :title, presence: true
  validates :title, uniqueness: true
end
