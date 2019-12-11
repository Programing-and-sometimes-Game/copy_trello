class Board < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :users, through: :add_user_to_boards
    has_many :add_user_to_boards
end

