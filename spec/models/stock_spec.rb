require 'rails_helper'

RSpec.describe Stock, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.create(:stock)).to be_valid
  end

  it "is valid with valid attributes" do
    expect(FactoryGirl.build(:stock)).to be_valid
  end
  it "is not valid without a company name" do
    expect(FactoryGirl.build(:stock, company_name: nil)).to_not be_valid
  end
  it "is not valid without a starting value" do
    expect(FactoryGirl.build(:stock, starting_value: nil)).to_not be_valid
  end
  it "is not valid without a minimum value" do
    expect(FactoryGirl.build(:stock, min_value: nil)).to_not be_valid
  end
  it "is not valid if minimum value is less than or equal to 0" do
    expect(FactoryGirl.build(:stock, min_value: 0)).to_not be_valid
    expect(FactoryGirl.build(:stock, min_value: -0.5)).to_not be_valid
  end
  it "is not valid without a maximum value" do
    expect(FactoryGirl.build(:stock, max_value: nil)).to_not be_valid
  end
  it "is not valid without a category" do
    expect(FactoryGirl.build(:stock, category: nil)).to_not be_valid
  end
  it "is not valid if starting price is not between min and max price" do
    expect(FactoryGirl.build(:stock, min_value: 5, max_value: 100, starting_value: 101)).to_not be_valid
    expect(FactoryGirl.build(:stock, min_value: 5, max_value: 100, starting_value: 1)).to_not be_valid
  end

  context "stock years are generated at beginning of game with stock to board method" do
    stock = FactoryGirl.build(:stock)
    stock_year = stock.stock_to_board

    it "generates a stock year" do
      stock_year.length == 52
    end

    it "only returns values between min and max" do
      expect(stock_year.any? {|n| n < stock.min_value || n > stock.max_value}).to be false
    end
  end

end
