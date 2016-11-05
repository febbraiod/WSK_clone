require 'faker'

FactoryGirl.define  do
  factory :stock do |f|
    f.company_name {Faker::Company.name}
    f.starting_value {Faker::Commerce.price}
    f.min_value {rand(10..99)/10}
    f.max_value {Faker::Number.number(6)}
    category
  end
end