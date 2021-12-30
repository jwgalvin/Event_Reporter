require 'csv'


class Event_Reporter
  attr_reader :queue, :contents

  def initialize#(csv_file)
    #@csv_file = csv_file
    @contents = []
    @queue = []
  end
  def cleans_data(data)
    @contents.clean_name
    @contents.clean_zipcode
  end

  def load(file = "full_event_attendees.csv")
    puts "#{file} has been loaded."
    @contents = CSV.read "#{file}", headers: true, header_converters: :symbol
    @contents.each do |row|
      name = row[:first_name]
      #names = clean_name(row[:first_name])
      zipcode = clean_zipcode(row[:zipcode])
    end
  end

  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5,"0")[0..4]
  end

  # def clean_name(name)
  #   name.capitalize
  # end

  def count
    @queue.count
  end

  def queue_clear
    puts "Your search queue has been cleared."
    @queue = @queue.clear
  end


  def find(attribute, value)
    queue_clear
    @contents.filter do |row|
      @queue << row if row[attribute.to_sym].capitalize == value
      #binding.pry
    end
  #  binding.pry
    # puts @queue
  end

def help
  puts "There are different commands you can use. \nqueue_clear  \nqueue_print  \nfind \nload"
  # will dsplay the results of the most recent search.
  #will search one of the rows for values that match
end

# def
# end
  # def display_search
  #   contents.each do |row|
  #     name = row[:first_name]
  #     zipcode = clean_zipcode(row[:zipcode])
  #     puts "#{name} #{zipcode}"
  #   end
  # end
end
