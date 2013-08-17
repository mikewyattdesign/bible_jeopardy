# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boards_category, :class => 'BoardsCategories' do
    board nil
    category nil
    position 1
  end
end
