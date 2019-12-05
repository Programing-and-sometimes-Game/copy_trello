class CreateGroupCheckLists < ActiveRecord::Migration[5.2]
  def change
    create_table :group_check_lists do |t|
      t.string :group_check_list_name
      t.references :group_task, foreign_key: true
      t.timestamps
    end
  end
end
