class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end