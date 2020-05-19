class Question < ApplicationRecord
  has_many :variants, dependent: :destroy
  belongs_to :assessment

  validates :text, presence: true
  
  before_destroy :send_notification
end

