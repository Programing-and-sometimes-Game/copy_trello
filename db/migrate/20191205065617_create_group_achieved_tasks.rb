class CreateGroupAchievedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_achieved_tasks do |t|
      t.references :group_check_list_item, foreign_key: true
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
