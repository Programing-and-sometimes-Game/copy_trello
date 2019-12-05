class CreateCheckListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :check_list_items do |t|
      t.string :check_list_item_name
      t.references :check_list, foreign_key: true
      t.timestamps
    end
  end
end
