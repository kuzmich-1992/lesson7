class Variant < ActiveRecord::Base
  belongs_to :question
  validates :text, :value, presence: true
end
