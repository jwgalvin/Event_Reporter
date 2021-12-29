require 'csv'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end
puts "Event Reporter has launced"

@queue = []

def queue_clear(queue)
  @queue = queue.clear
  puts "Your search queue has been cleared."
end

def find(input)
  #to be defined
end

sleep (.5)

def load(file = "full_event_attendees.csv")
  file_load = CSV.open file, headers: true, header_converters: :symbol
end

#contents = CSV.open "full_event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end
