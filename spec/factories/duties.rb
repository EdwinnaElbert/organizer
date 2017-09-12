FactoryGirl.define do
  factory :duty do
    category_id 1
    title "MyString"
    every_day false
    days_of_week ""
    days_of_month ""
    until_date "2017-09-11 15:13:48"
  end
end
