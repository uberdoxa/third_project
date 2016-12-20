class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i # got this from rails tutorial 
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  					length: { maximum: 200 }, uniqueness: { case_sensitive: false}
  validates :name, presence: true, length: { maximum: 50 }
  validates :image_url, presence: { :message => "Please chooese your avatar"}
end
