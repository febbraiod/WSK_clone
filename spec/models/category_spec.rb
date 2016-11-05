require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:category)).to be_valid
  end
  it 'is invalid without a volatility index' do
    expect(FactoryGirl.build(:category, volatility_index: nil)).to_not be_valid
  end
  it 'is invalid without a title' do
    expect(FactoryGirl.build(:category, title: nil)).to_not be_valid
  end

end
