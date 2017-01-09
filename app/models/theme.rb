class Theme < ApplicationRecord
  has_many :images

  validates_presence_of :name
  validates_associated :images
end
