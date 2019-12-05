class CheckList < ApplicationRecord
    belongs_to :task
    has_many :check_list_items, dependent: :destroy
end
