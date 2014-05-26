class Category < ActiveRecord::Base
  has_and_belongs_to_many :clues
  has_many :categorysets
  has_many :boards, through: :categorysets

  validates :name, presence: true
end
