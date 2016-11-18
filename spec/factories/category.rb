require 'faker'

FactoryGirl.define  do
  factory :category do |f|
    # can't test Cyclical without gameboard
    f.title {['Blue Chip','Speculative','Growth'][rand(0..2)]}
    f.volatility_index {rand(1..9)}
  end
end



