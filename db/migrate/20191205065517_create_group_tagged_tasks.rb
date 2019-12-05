class CreateGroupTaggedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_tagged_tasks do |t|
      t.references :group_task, foreign_key: true
      t.references :group_tag, foreign_key: true
      t.timestamps
    end
  end
end
