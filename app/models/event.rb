class Event < ApplicationRecord
      belongs_to :creator, class_name: "User",foreign_key: 'creator_id',optional: true
      def free?
        price.blank? || price.zero?
      end
end
