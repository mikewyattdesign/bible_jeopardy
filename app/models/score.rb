class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  attr_accessible :value
end
