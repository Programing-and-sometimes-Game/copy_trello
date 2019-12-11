class GroupList < ApplicationRecord
    belongs_to :group_board
    has_many :group_tasks, dependent: :destroy
end
