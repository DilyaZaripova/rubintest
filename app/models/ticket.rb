class Ticket < ApplicationRecord
  has_one :seance
  belongs_to :status
end
