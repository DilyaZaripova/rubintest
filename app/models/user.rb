class User < ApplicationRecord
  has_many :value
  has_many :book
  has_many :review
end
