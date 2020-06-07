class Post < ApplicationRecord
    validates :user_id, presence: true
    validates :image, presence: true
    belongs_to :user
    has_one_attached :image
end
