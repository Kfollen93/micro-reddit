class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, presence: true, length: { in: 2..40 }
    validates :body, length: { in: 10..10000 }
end
