class Board < ActiveRecord::Base
  attr_accessible :name, :difficulty
  has_many :categorysets
  has_many :categories, through: :categorysets
  has_many :cluesets
  has_many :clues, through: :cluesets
end
