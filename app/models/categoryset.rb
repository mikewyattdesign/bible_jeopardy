class Categoryset < ActiveRecord::Base
  belongs_to :category
  belongs_to :board
  attr_accessible :position
end
