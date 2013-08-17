class Category < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :clues
  has_many :categorysets
  has_many :boards, through: :categorysets
end
