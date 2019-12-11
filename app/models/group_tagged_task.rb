class GroupTaggedTask < ApplicationRecord
    belongs_to :group_task
    belongs_to :group_tag
end
