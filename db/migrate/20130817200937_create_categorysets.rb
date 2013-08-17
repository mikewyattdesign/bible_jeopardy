class CreateCategorysets < ActiveRecord::Migration
  def change
    create_table :categorysets do |t|
      t.references :category
      t.references :board
      t.integer :position

      t.timestamps
    end
    add_index :categorysets, :category_id
    add_index :categorysets, :board_id
  end
end
