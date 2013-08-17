# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boards_clue, :class => 'BoardsClues' do
    board nil
    clue nil
    position 1
  end
end
