require 'rails_helper'

RSpec.describe Player, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:player)).to be_valid
  end

  it "is valid with valid attributes" do
    expect(FactoryGirl.build(:player)).to be_valid
  end

  it "is not valid without a name" do
    expect(FactoryGirl.build(:stock, name: nil)).to_not be_valid
  end

  it "is not valid without a bank_account" do
    expect(FactoryGirl.build(:stock, bank_account: nil)).to_not be_valid
  end

  #can test existance but need to flesh out relationships to actually calculate
  it 'has a net worth' do
  end

  it "belongs to a game" do
  end

  it 'has a portfolio' do
  end

end
