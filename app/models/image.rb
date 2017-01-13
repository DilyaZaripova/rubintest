class Image < ApplicationRecord
  belongs_to :theme
  belongs_to :book
  has_many :values

  validates_presence_of :name, :file
  validates_associated :theme, :book
end
