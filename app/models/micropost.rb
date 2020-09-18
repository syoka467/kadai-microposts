class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites, dependent: :destroy,foreign_key: 'micropost_id'
  has_many :likes, through: :favorites
end
