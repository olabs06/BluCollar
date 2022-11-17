class Admin < ApplicationRecord
    has_many :users
    has_many :workers

    validates :is_admin, inclusion: {in: %w(Admin Not_Admin), message: "has an incorrect value, try Admin or Not_Admin" }
end
