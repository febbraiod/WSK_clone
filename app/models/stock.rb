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
      starting_value < min_value || starting_value > max_value ? errors.add(:starting_price, "starting price must be between min and max") : true
    end
  end


  def generate_year(gameboard = nil)
    stock_year = [self.starting_value]

    i = 0
    while i <= 51
      gain_or_loss = up_or_down(self.category, i, gameboard)
      percent_change = rand(0..self.category.volatility_index).to_f
      stock_this_week = stock_year[i] + (stock_year[i] * (percent_change/100 * gain_or_loss))
      
      if stock_this_week > self.max_value
        stock_this_week = self.max_value
      elsif stock_this_week < self.min_value
        stock_this_week = self.min_value
      end
      
      stock_year << stock_this_week.round(2)
      i += 1
    end

    stock_year
  end

  #helpers

  def up_or_down(category, week, gameboard)
    if category.title == 'Blue Chip' || category.title == 'Speculative'
      return rand(0..1) * 2 - 1
    elsif category.title == 'Growth'
      die = rand(1..100)
      die >= 65 ? -1 : 1
    elsif category.title == 'Cyclical'
      check_economy(week, gameboard)
    end
  end

  def check_economy(week, gameboard)
    last_week = 0
    this_week = 0
    gameboard.attributes.each do |stock_name, stock_year|
      if !['week', 'id', 'created_at', "updated_at"].include?(stock_name)
        stock_cat = Stock.find_by(company_name: stock_name).category.title
        last_week +=  stock_year[week - 1] unless week == 0 || stock_cat == 'Cyclical'
        this_week +=  stock_year[week] unless stock_cat == 'Cyclical'
      end
    end

    die = rand(1..100)
    if this_week > last_week
      #stocks became too predictable, needed to introduce some randomness
      die <= 85 ? 1 : -1
    else
      die >= 85 ? 1 : -1
    end
  end

end