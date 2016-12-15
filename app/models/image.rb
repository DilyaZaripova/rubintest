class Image < ApplicationRecord
  belongs_to :theme
  belongs_to :book
  has_many :value
  validates_presence_of :name, :file
end
