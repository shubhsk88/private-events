class User < ApplicationRecord
  has_many :events,class_name: 'Event',foreign_key: 'creator_id',dependent: :delete_all
  has_secure_password

  validates :name,presence:true
  validates :email, format: { with: /\S+@\S+/ }
end
