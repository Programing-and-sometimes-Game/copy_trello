class GroupBoard < ApplicationRecord
    belongs_to :groups
    has_many :group_lists, dependent: :destroy
end
