class CreateJoinTableCategoryClue < ActiveRecord::Migration
    def change
        create_table :categories_clues, :id => false do |t|
            t.column :category_id, :integer
            t.column :clue_id, :integer
        end
        add_index :categories_clues, [:category_id, :clue_id]
        add_index :categories_clues, [:clue_id, :category_id]
    end
end
