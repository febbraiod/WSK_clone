class Gameboard < ActiveRecord::Base


  def self.build_gameboard
    g = Gameboard.new()

    cyclical_stocks, non_cyclical = Stock.all.partition { |x| x.category.title == 'Cyclical' }

    # we need to know the results of the rest of the economy before determining cyclical values
    non_cyclical.each do |s|
      #so pumped about this move
      g.send(s.company_name + '=', s.generate_year)
    end

    cyclical_stocks.each do |s|
      #so pumped about this move
      g.send(s.company_name + '=', s.generate_year(g))
    end

    g.save
  end
end
