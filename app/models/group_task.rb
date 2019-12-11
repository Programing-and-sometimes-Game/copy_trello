class GroupTask < ApplicationRecord
    belongs_to :group_list
    has_many :group_check_list, dependent: :destroy
    has_many :group_tags, through: :group_tagged_tasks
    has_many :group_tagged_tasks
end
