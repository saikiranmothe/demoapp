# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_request do
    service_name "MyString"
    serivce_type "MyString"
    status "MyString"
    street_number "MyString"
    street_direction "MyString"
    city "MyString"
    zip "MyString"
    country "MyString"
    date "2012-05-24 18:54:31"
  end
end
