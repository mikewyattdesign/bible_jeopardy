class CreateJoinTableBoardClue < ActiveRecord::Migration
    def change
        create_table :boards_clues, :id => false do |t|
            t.column :board_id, :integer
            t.column :clue_id, :integer
            t.integer :position
        end
        add_index :boards_clues, [:board_id, :clue_id]
        add_index :boards_clues, [:clue_id, :board_id]
    end
end
