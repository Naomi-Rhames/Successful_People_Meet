require 'rails_helper'

RSpec.describe User, type: :model do

  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new(phone_number: 'Phone').save
      expect(user).to eq(false)
    end

    it 'ensures phone number' do
      user = User.new(email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(phone_number: 'Phone', email: 'sample@example.com').save
      expect(user).to eq(true)
    end
  end

  context 'scope tests' do

  end
end
