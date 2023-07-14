require 'rails_helper'

RSpec.describe Category, type: :model do
  @user = User.create(name: 'Simon', email: 'simon@gmail.com', password: 'test123')
  subject { Category.new(author: @user, name: 'MacDoland', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png') }

  before { subject.save }
  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should contan some char' do
    subject.name = '    '
    expect(subject).to_not be_valid
  end

  it 'Icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'Icon should contan some char' do
    subject.icon = '    '
    expect(subject).to_not be_valid
  end
end
