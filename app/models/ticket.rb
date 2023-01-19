class Ticket < ApplicationRecord
  belongs_to :schedule
  validate :count_seats

  def count_seats
    seats = self.schedule.car.no_seats.to_i
    schedule = self.schedule.tickets.count
    if seats < schedule
      errors.add(:base, 'Seats are full already')
    end
  end
end
