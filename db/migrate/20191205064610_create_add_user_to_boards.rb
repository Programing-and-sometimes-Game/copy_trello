class CreateAddUserToBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_to_boards do |t|
      t.boolean :activation, default: false
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true
      t.timestamps
    end
  end
end
