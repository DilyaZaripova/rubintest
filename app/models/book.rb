class Book < ApplicationRecord
  has_many :genre
  has_many :review
  belongs_to :image
  belongs_to :user
end
