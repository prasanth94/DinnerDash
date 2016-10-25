# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_detail do
    dish_id "MyString"
    quantity 1
    Dish nil
  end
end
