class Gameboard < ActiveRecord::Base

  def self.build_gameboard
    gameboard = Gameboard.new()

    # cool and new to me. don't need both reject and select. 3 lines to 1. boom.
    cyclical_stocks, non_cyclical = Stock.all.partition { |x| x.category.title == 'Cyclical' }

    # we need to know the results of the rest of the economy before determining values of cyclical stocks
    non_cyclical.each do |stock|
      #so pumped about this move too boom times 2.
      gameboard.send(stock.company_name + '=', stock.generate_year)
    end

    cyclical_stocks.each do |stock|
      gameboard.send(stock.company_name + '=', stock.generate_year(gameboard))
    end

    gameboard.save
  end

end