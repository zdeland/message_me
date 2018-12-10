class User < ApplicationRecord
    validates :username, presence: true, uniqueness: {case_sensitive:false}, Length: {minimum: 1,maximum: 15}
    has_secure_password
    has_many :messages
end
