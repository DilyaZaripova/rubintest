class Genre < ApplicationRecord
  has_many :book

  validates_presence_of :name
  validates_associated :book
end
