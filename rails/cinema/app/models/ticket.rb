class Ticket < ApplicationRecord
  validates :tittle, :price, :desciption, presence: true
  validates :price, numericality: { greater_than: 0 }
end
