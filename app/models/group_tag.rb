class GroupTag < ApplicationRecord
    has_many :group_tasks, through: :group_tagged_tasks
    has_many :group_tagged_tasks
end
