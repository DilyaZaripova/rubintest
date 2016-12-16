class User < ApplicationRecord
  has_many :value
  has_many :book
  has_many :review

  validates_associated :book, :review
  validates :name,  :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
  validates :surname,  :presence => true,
                        :length => {:minimum => 1, :maximum => 254}
  validates :email, :presence => true,
                    :uniqueness => true,
                    :length => {:minimum => 3, :maximum => 254},
                    :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
end
