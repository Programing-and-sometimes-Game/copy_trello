class CreateGroupTags < ActiveRecord::Migration[5.2]
  def change
    create_table :group_tags do |t|
      t.string :group_tag_name

      t.timestamps
    end
  end
end
