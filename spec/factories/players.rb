# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    firstname "Fred"
    lastname "Smith"
    username "fsmith"
    email "fsmith@test.com"
    password "pass"
    password_confirmation "pass"
    phone "0455 555555"
    avatar ""
    adminflag true
    mgrflag false
  end

  factory :invalid_player, parent: :player do
    firstname nil
   end
end
