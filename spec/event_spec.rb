require "rails_helper"

RSpec.describe Event, type: :model do


 context 'associations' do
   it { should belong_to(:creator).class_name('User') }
   it { should have_many(:registrations) }
   it { should have_many(:attendees) }
   
 end
end