class CreateBoardInvitingMails < ActiveRecord::Migration[5.2]
  def change
    create_table :board_inviting_mails do |t|
      t.text :description
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true
      t.timestamps
    end
  end
end
