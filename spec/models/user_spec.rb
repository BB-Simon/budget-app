require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Simon', email: 'simon@gmail.com', password: 'pass1234') }

  before { subject.save }
  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should contan some char' do
    subject.name = '    '
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
