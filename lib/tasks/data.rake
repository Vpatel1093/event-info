require 'csv'

namespace :data do
  desc "Import data from csv files"
  task :import => :environment do
    people_csv_text = File.open('db/people.csv', 'r:ISO-8859-1')
    people_csv = CSV.parse(people_csv_text, :headers => true)
    people_csv.each do |row|
      Person.create!(row.to_hash)
    end

    events_csv_text = File.open('db/events.csv', 'r:ISO-8859-1')
    events_csv = CSV.parse(events_csv_text, :headers => true)
    events_csv.each do |row|
      Event.create!(row.to_hash)
    end

    assistance_csv_text = File.open('db/assistance.csv', 'r:ISO-8859-1')
    assistance_csv = CSV.parse(assistance_csv_text, :headers => true)
    assistance_csv.each do |row|
      Reservation.create!(row.to_hash)
    end
  end
end
