class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader
  has_many :posts
  after_create :set_default_avatar

  def set_default_avatar
    self.avatar = File.open(Rails.root + "app/assets/images/avatar.jpeg")
    self.save!
  end
end
