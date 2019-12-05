class Tag < ApplicationRecord
    has_many :tasks, through: :tagged_tasks
    has_many :tagged_tasks
end
