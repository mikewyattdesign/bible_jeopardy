class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.string :prompt
      t.string :response
      t.string :passage
      t.integer :difficulty

      t.timestamps
    end
  end
end
