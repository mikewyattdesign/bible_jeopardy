class Clueset < ActiveRecord::Base
  belongs_to :clue
  belongs_to :board
end
