class Group < ApplicationRecord
    has_many :group_boards, dependent: :destroy
    has_many :users, through: :group_members
    has_many :group_members
end
