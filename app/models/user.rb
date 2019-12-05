class User < ApplicationRecord
    has_many :boards, through: :add_user_to_boards
    has_many :add_user_to_boards

    has_many :groups, through: :group_members
    has_many :group_members
end
