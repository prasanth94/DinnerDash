# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_history do
    quantity 1
    Dish nil
  end
end
