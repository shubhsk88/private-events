require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:events).class_name('Event').dependent(:delete_all) }
    it { should have_many(:registrations) }
    it { should have_many(:attended_events) }
    it { should have_secure_password }
  end
end
