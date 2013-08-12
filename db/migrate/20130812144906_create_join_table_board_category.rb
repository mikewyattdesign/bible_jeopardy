class CreateJoinTableBoardCategory < ActiveRecord::Migration
    def change
        create_table :boards_categories, :id => false do |t|
            t.column :board_id, :integer
            t.column :category_id, :integer
            t.integer :position
        end
        add_index :boards_categories, [:board_id, :category_id]
        add_index :boards_categories, [:category_id, :board_id]
    end
end
