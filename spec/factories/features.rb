# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feature do
    device nil
    body "MyText"
    status "MyString"
  end
end
