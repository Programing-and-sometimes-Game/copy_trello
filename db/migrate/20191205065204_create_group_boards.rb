class CreateGroupBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :group_boards do |t|
      t.string :group_board_name
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
