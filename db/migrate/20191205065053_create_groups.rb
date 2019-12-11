class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.text :description, null: true
      t.text :group_image
      t.integer :owner_user_id
      t.timestamps
    end
  end
end
