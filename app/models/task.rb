class Task < ApplicationRecord
    belongs_to :list
    has_many :check_list, dependent: :destroy
    has_many :tags, through: :tagged_tasks
    has_many :tagged_tasks
end
