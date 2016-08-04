class Review < ApplicationRecord
belongs_to :user
belongs_to :product
validates :user_id, presence: true
validates :content, presence: true, length: { maximum: 140 }
default_scope -> { order(created_at: :desc) }
has_many :reviews, dependent: :destroy
end
