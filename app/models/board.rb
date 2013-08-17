class Board < ActiveRecord::Base
  attr_accessible :name
  has_many :categories
  has_many :clues
end
