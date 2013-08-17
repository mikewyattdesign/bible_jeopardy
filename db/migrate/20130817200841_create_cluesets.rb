class CreateCluesets < ActiveRecord::Migration
  def change
    create_table :cluesets do |t|
      t.references :clue
      t.references :board
      t.integer :position

      t.timestamps
    end
    add_index :cluesets, :clue_id
    add_index :cluesets, :board_id
  end
end
