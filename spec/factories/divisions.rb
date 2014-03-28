# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :division do
    divname "MyString"
    competition_id 1
  end
  factory :invalid_division, parent: :division do
    divname nil
  end
end
