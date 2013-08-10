class Clue < ActiveRecord::Base
  attr_accessible :difficulty, :passage, :prompt, :response
end
