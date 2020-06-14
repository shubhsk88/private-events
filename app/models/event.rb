class Event < ApplicationRecord
      belongs_to :creator, class_name: "User",foreign_key: 'creator_id',optional: true
      has_many :attendees,source: :user_id
      
      def free?
        price.blank? || price.zero?
      end
end
