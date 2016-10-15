# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :line_item do
    quantity 1
    dish nil
    cart nil
  end
end
