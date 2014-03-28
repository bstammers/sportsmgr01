# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team do
    teamname "MyString"
    competition_id 1
    division_id 1
    teammgr "MyString"
    played 1
    won 1
    lost 1
    tied 1
    sets_won 1
    sets_lost 1
    points_for 1
    points_against 1
    sets_percent 33.3
    points_percent 66.6
    comp_points 25.0
  end
  factory :invalid_team, parent: :team do
    teamname nil
  end
end
