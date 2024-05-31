class Flight < ApplicationRecord
  belongs_to :arrival, class_name: "Airport"
  belongs_to :departure, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.for_date(date)
    if date != ""
      where(date: date.to_date.all_day)
    else
      all
    end
  end
end
