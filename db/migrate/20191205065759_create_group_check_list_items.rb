class CreateGroupCheckListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :group_check_list_items do |t|
      t.string :group_check_list_item_name
      t.references :group_check_list, foreign_key: true
      t.timestamps
    end
  end
end
