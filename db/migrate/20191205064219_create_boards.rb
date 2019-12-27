class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :board_name
      t.string "board_image_id"
      t.timestamps
    end
  end
end
