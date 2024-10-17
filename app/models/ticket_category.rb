class TicketCategory < ApplicationRecord
  has_many :ticket_entries, dependent: :destroy
end