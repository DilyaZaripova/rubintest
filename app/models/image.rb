class Image < ApplicationRecord
  belongs_to :theme
  validates_presence_of :name, :file
end
