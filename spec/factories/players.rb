# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    firstname "MyString"
    lastname "MyString"
    username "MyString"
    email "MyString"
    password_digest "MyString"
    phone "MyString"
    avatar "MyString"
    adminflag false
    mgrflag false
  end
end
