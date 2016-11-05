require 'rails_helper'

RSpec.describe Stock, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.create(:stock)).to be_valid
  end

  stock = FactoryGirl.create(:stock)
  it "is valid with valid attributes" do
    expect(stock).to be_valid
  end
  it "is not valid without a company name" do
    expect(stock.company_name = nil).to_not be_valid
  end
  it "is not valid without a starting value" do
    expect(stock).to_not be_valid
  end
  it "is not valid without a minimum value" do
    expect(stock).to_not be_valid
  end
  it "is not valid without a maximum value" do
    expect(stock).to_not be_valid
  end
  it "is not valid without a category" do
    expect(stock).to_not be_valid
  end

  #   def stock_to_board(stock)
  #   stock_year = [50.5]

  #   i = 0
  #   while i <= 51
  #     up_or_down = rand(0..1) * 2 - 1
  #     percent_change = rand(0..5).to_f
  #     stock_this_week = stock_year[i] + (stock_year[i] * (percent_change/100 * 4) * up_or_down)
  #     stock_year << stock_this_week.round(2)
  #     i += 1
  #   end

  #   stock_year
  # end

end
