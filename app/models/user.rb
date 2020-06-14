class User < ApplicationRecord
  has_many :events,class_name: 'Event',foreign_key: 'creator_id',dependent: :delete_all
  has_many :registrations,foreign_key: 'attendee_id'
  has_many :attended_events,through: :registrations
  has_secure_password


  def upcoming_events
    self.attended_events.where("starts_at > ?",Time.now).order("starts_at")
  end  


  def past_events
    self.attended_events.where("starts_at < ?",Time.now).order("starts_at")        
  end
  
  
  validates :name,presence:true
  validates :email, format: { with: /\S+@\S+/ }
end
