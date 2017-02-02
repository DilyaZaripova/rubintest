class Value < ApplicationRecord
  belongs_to :user
  belongs_to :image

  validates_presence_of :value, :image_id, :value
end
