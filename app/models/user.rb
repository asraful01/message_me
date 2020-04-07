class User < ApplicationRecord
validates :username, presence: true, length:{minimum:3,maximum:15},
            uniqueness: { case_sensitive: false}
    validates :password, presence: true, length:{minimum:4,maximum:15}

has_many :messages
has_secure_password

end
