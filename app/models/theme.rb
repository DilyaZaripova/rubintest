class Theme < ApplicationRecord
  has_many :image

  validates_presence_of :name
  validates_associated :image
end
