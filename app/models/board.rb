class Board < ActiveRecord::Base
  has_many :categorysets
  has_many :categories, through: :categorysets
  has_many :cluesets
  has_many :clues, through: :cluesets

  def next
    unless Board.where("difficulty > ?", self.difficulty).empty?
        Board.where("difficulty > ?", self.difficulty).order("difficulty").first 
    else
        Board.where("difficulty < ?", self.difficulty).order("difficulty").first    
    end
  end

  def previous
    unless Board.where("difficulty < ?", self.difficulty).empty?
        Board.where("difficulty < ?", self.difficulty).order("difficulty").last
    else
        Board.where("difficulty > ?", self.difficulty).order("difficulty").last
    end
  end
end
