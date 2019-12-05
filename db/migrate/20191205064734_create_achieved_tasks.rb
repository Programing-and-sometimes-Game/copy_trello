class CreateAchievedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :achieved_tasks do |t|
      t.references :check_list_item, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
