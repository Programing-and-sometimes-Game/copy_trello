class CreateGroupInvitingMails < ActiveRecord::Migration[5.2]
  def change
    create_table :group_inviting_mails do |t|
      t.text :description
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
