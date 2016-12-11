class User < ApplicationRecord
  belongs_to :ticket
  validates :name, presence: true
  validates :email, presence: true,  uniqueness: true
  validates_format_of :email, :with => /@/
end
