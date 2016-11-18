require 'rails_helper'

RSpec.describe Player, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:player)).to be_valid
  end

  it "is valid with valid attributes" do
    expect(FactoryGirl.build(:player)).to be_valid
  end

  it "is not valid without a name" do
    expect(FactoryGirl.build(:player, name: nil)).to_not be_valid
  end

  it "is not valid without a bank_account" do
    expect(FactoryGirl.build(:player, bank_account: nil)).to_not be_valid
  end

  it "is starts with a bank_account of $500,000" do
    p = FactoryGirl.build(:player)
    expect(p.bank_account).to eq(500000.0)
  end

  it "belongs to a game" do
  end

  it 'has a portfolio' do
  end

end
