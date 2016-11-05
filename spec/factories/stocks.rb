require 'faker'

FactoryGirl.define  do
  factory :stock do |f|
    f.company_name {Faker::Company.name}
    f.starting_value {Faker::Commerce.price}
    f.min_value {Faker::Number.digit}
    f.max_value {Faker::Number.number(6)}
    f.category {Category.new(title: 'Industrial')}
  end
end