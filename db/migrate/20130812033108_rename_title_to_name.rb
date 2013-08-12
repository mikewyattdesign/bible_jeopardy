class RenameTitleToName < ActiveRecord::Migration
    def change
        rename_column :boards, :title, :name
        rename_column :categories, :title, :name
    end
end
