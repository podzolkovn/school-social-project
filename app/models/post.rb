class Post < ApplicationRecord
	  validates :description, presence: true, length: { in: 5..500 }
  # validate :correct_image_type

  belongs_to :user
  has_many :comments

  has_one_attached :picture, dependent: :destroy

  has_one_attached :attachment
end
