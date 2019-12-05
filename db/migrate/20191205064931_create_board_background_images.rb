class CreateBoardBackgroundImages < ActiveRecord::Migration[5.2]
  def change
    create_table :board_background_images do |t|
      t.text :picture

      t.timestamps
    end
  end
end
