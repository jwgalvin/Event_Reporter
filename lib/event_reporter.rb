require 'csv'

class Event_Reporter
  attr_reader :queue, :csv_file

  def initialize(csv_file)
    @csv_file = csv_file
    @queue = []
  end


  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5,"0")[0..4]
  end


  def queue_clear
    @queue = queue.clear
    puts "Your search queue has been cleared."
  end

  def find(attribute, value)
    @queue.queue_clear
    @contents.filter do |row|
      @queue << row if value[attribute.to_sym] == value
    end
    puts queue
    @queue
  end

  def load(file = "full_event_attendees.csv")
    file_load = CSV.open file, headers: true, header_converters: :symbol
    puts "#{file} has been loaded."
  end


# contents.each do |row|
#   name = row[:first_name]
#   zipcode = clean_zipcode(row[:zipcode])
#   puts "#{name} #{zipcode}"
# end

end
