class CreateGroupLists < ActiveRecord::Migration[5.2]
  def change
    create_table :group_lists do |t|
      t.string :group_list_name
      t.references :group_board, foreign_key: true
      t.timestamps
    end
  end
end
