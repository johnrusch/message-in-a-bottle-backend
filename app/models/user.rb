class User < ApplicationRecord
    has_secure_password
    has_many :messages
    has_many :journals
    validates :name, uniqueness: {case_sensitive: false }
end