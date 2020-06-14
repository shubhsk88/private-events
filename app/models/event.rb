class Event < ApplicationRecord
      belongs_to :creator, class_name: "User",foreign_key: 'creator_id',optional: true
      has_many :registrations ,foreign_key: 'attended_event_id'
      has_many :attendees ,through: :registrations,source: :attendee

      
      def free?
        price.blank? || price.zero?
      end
end
