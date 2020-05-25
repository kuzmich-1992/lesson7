class Assessment < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :title, presence: true
  validates :title, uniqueness: true
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
end
