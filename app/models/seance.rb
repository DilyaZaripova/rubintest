class Seance < ApplicationRecord
  has_one :ticket
  belongs_to :movie
  belongs_to :hall
end
