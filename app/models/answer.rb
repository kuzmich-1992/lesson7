class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :variant

  validate :variant_belongs_to_question

  private

  def variant_belongs_to_question
  	unless question.variants.ids.include?(variant.id)
  	  errors.add(:variant, 'variant should belongs to chosen question')
  	end
  end
end
