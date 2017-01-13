class Book < ApplicationRecord
  belongs_to :genre
  has_many :reviews
  belongs_to :image
  belongs_to :user

  #validates_presence_of :name, :author, :description, :release
  #validates_associated :genre, :image, :user
end
