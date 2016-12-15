class Book < ApplicationRecord
  has_many :genre
  has_many :review
  belongs_to :image
  belongs_to :user

  validates_presence_of :name, :author, :description, :release
  validates_associated :genre, :review, :image, :user
end
