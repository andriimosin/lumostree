class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.string :name
      t.integer :parent_id, null: true, default: nil
      t.integer :directory_tree_id

      t.timestamps
    end
  end
end
