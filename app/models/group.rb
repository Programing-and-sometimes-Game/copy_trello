class Group < ApplicationRecord
    has_many :group_boards, dependent: :destroy
    has_many :users, through: :group_members
    has_many :group_members, dependent: :destroy
    accepts_nested_attributes_for :group_members
end
