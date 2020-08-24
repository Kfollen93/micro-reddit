class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :username, :first_name, :last_name, :email_address, length: { in: 2..25 }
    validates :age, length: { minimum: 2, maximum: 3 }
    validates :username, :first_name, :last_name, :email_address, :age, presence: true
    validates :username, :email_address, uniqueness: true
end