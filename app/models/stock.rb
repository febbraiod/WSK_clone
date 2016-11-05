class Stock < ActiveRecord::Base
  belongs_to :category
  validates :category, :presence => true

  validates_presence_of :company_name
  validates_presence_of :starting_value
  validates_presence_of :min_value
  validates_presence_of :max_value

  validates_numericality_of :min_value, :greater_than => 0
  validate :starting_price_is_between

  def starting_price_is_between
    if min_value && max_value && starting_value
      starting_value < min_value || starting_value > max_value ? errors.add(:starting_price, "must be between min and max") : true
    end
  end



  def stock_to_board
    stock_year = [self.starting_value]

    i = 0
    while i <= 51
      up_or_down = rand(0..1) * 2 - 1
      percent_change = rand(0..5).to_f
      stock_this_week = stock_year[i] + (stock_year[i] * (percent_change/100 * self.category.volatility_index * up_or_down))
      # need to check this week's price against min and max val
      stock_year << stock_this_week.round(2)
      i += 1
    end

    stock_year
  end

end


  # def stock_to_board
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