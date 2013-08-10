class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :user
      t.references :board

      t.timestamps
    end
    add_index :scores, :user_id
    add_index :scores, :board_id
  end
end
