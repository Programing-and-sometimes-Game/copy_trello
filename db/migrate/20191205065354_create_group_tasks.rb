class CreateGroupTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_tasks do |t|
      t.string :task_name
      t.text :description, null: true
      t.datetime :deadline_start, null: true
      t.datetime :deadline_end, null: true
      t.references :group_list, foreign_key: true
      t.timestamps
    end
  end
end
