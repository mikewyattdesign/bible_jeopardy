class AddDifficultyToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :difficulty, :integer
  end
end
