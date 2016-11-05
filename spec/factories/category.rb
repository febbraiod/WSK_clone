require 'faker'

FactoryGirl.define  do
  factory :category do |f|
    f.title {Faker::Company.name}
    f.volatility_index {rand(1..9)}
  end
end