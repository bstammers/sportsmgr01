# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :competition do
    name "Sample Competition"
    pointsflag true
    setsflag true
    mvpflag true
  end
  factory :invalid_competition, parent: :competition do
    name nil
  end
end
