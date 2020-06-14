class Registration < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'

  validates :attendee_id, uniqueness: true
  validates :attended_event_id,uniqueness:true
end
