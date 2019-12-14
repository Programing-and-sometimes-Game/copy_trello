class GroupBoard < ApplicationRecord
    belongs_to :group
    has_many :group_lists, dependent: :destroy
end
