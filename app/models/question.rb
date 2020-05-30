class Question < ActiveRecord::Base
  has_many :variants, dependent: :destroy
  belongs_to :assessment
  validates :text, presence: true
  accepts_nested_attributes_for :variants,reject_if: :all_blank,allow_destroy: true
end





# class Question < ApplicationRecord
#   has_many :variants, dependent: :destroy
#   belongs_to :assessment

#   validates :text, presence: true
  
#   #before_destroy :send_notification

#   accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true
# end

