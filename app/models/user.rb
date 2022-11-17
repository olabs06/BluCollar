class User < ApplicationRecord
    belongs_to :admin
    has_many :workers, through: :admin
    
    has_secure_password  
end
