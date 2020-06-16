class Adpost < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :company_name, presence: true
end
