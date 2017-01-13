class Genre < ApplicationRecord
  has_many :books

  #validates_presence_of :name
  #validates_associated :book
end
