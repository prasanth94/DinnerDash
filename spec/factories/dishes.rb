# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dish do
    name "MyString"
    description "MyText"
    vegeterian false
    category "MyString"
    price "MyString"
    image "MyString"
    restaurant nil
  end
end
