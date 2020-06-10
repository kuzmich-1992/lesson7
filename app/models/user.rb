class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :user_roles
  has_many :roles, through: :user_roles
  
  mount_uploader :avatar, AvatarUploader

  validates_integrity_of  :avatar
  validates_processing_of :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true

  def role?(name)
    roles.pluck(:name).include?(name.to_s)
  end
end