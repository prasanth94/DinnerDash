# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    location "MyString"
    restaurant_type "MyString"
    rating "MyString"
    open false
  end
end
