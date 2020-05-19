class Variant < ApplicationRecord
  belongs_to :question
  validates :text, :value, presence: true
end
