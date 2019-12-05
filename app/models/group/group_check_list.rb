class GroupCheckList < ApplicationRecord
    belongs_to :group_task
    has_many :group_check_list_items, dependent: :destroy
end
