# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :clueset do
    clue nil
    board nil
    sequence(:position)
  end
end
