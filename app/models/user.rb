class User < ApplicationRecord
  has_secure_password

  validates :name,presence:true
  validates :email, format: { with: /\S+@\S+/ }
end
