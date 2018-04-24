class CreateDirectoryTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :directory_trees do |t|
      t.string :name

      t.timestamps
    end
  end
end
