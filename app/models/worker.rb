class Worker < ApplicationRecord
    belongs_to :admin
    has_many :users, through: :admin

    validates :job_type, presence: true
end
