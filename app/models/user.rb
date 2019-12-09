class User < ActiveRecord::Base
	has_secure_password
	validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, length: {:within => 6..40}, on: :create

	has_many :urls
end