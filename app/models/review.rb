class Review < ApplicationRecord
  belongs_to :product
  validates :content, presence: true
end
