class Question < ActiveRecord::Base
  has_many :variants, inverse_of: :question, dependent: :destroy
  belongs_to :assessment
  validates :text, presence: true
  accepts_nested_attributes_for :variants
end
