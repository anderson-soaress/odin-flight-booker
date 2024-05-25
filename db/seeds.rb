# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.create(code: "SSA")
Airport.create(code: "GRU")
Airport.create(code: "NAT")
Airport.create(code: "SDU")
Airport.create(code: "REC")

Flight.create(departure_id: 2, arrival_id: 1, date: "2024-06-01 01:00:00 UTC",  duration: '2:30')
Flight.create(departure_id: 3, arrival_id: 5, date: "2024-05-26 06:00:00 UTC",  duration: '1:20')
Flight.create(departure_id: 5, arrival_id: 2, date: "2024-04-22 12:00:00 UTC",  duration: '3:00')
Flight.create(departure_id: 4, arrival_id: 2, date: "2024-05-25 23:00:00 UTC",  duration: '1:00')