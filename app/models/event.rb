class Event < ApplicationRecord
      belongs_to :creator, class_name: "User",foreign_key: 'creator_id'
      has_many :registrations ,foreign_key: 'attended_event_id'
      has_many :attendees ,through: :registrations,source: :attendee

      def upcoming_events
        where("starts_at > ?",Time.now).order("starts_at")
      end  


      def previous_events
        where("starts_at < ?",Time.now).order("starts_at")        
      end
      

      def free?
        price.blank? || price.zero?
      end

end
