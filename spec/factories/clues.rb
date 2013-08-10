# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :clue do
    prompt "MyString"
    response "MyString"
    passage "MyString"
    difficulty 1
  end
end
