require './lib/event_reporter'

class Print_Messages

  def initialize(input)
    @input = input
  end

  def welcome
    puts "Welcome to the thing."
    puts basic_commands
  end

  def basic_commands
    puts "Do you need to (l)oad file, want (h)elp, or (q)uit?"
  end

  def help
    puts "Choose which command you're to stupid to understand. \n find \nload \nqueue \nqueue_clear \nqueue_count \nqueue_print \n queue_save. Type 'Help' as needed."
  end

  def help_find
    puts "Find: To use type 'find[category] [entry]' The following categories are searchable; first_name, last_name, email_address, phone_number, street, city, state, or zipcode."
  end

  def help_load
    puts "Load: applies the database you want to search.  It defaults to 'full_event_attendees.csv'."
  end

  def help_queue
    puts "Queue: Is your current search.  It resets every time you run find and if you run queue_clear."
  end

  def help_queue_clear
    puts "Queue_clear: clears results from the previous query."
  end

  def help_queue_count
    puts "Queue_count: counts how many results are in your current search."
  end

  def not_valid
    puts "Not valid input. Please try again. Type HELP if you need assistance."
    sleep (.5)
  end

  def file_to_load
    puts "Please specify the filename for the database you wish to search."
  end
end
