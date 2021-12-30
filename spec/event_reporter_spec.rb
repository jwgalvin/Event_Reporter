require 'pry'
require './lib/event_reporter'
#require './lib/full_event_attendees.csv'
require 'Rspec'

describe Event_Reporter do
  it "event_reporter returns an empty array when intialized" do
    events = Event_Reporter.new #("full_event_attendees.csv")

    expect(events).to be_a(Event_Reporter)
    #binding.pry
    expect(events.queue).to eq([])
  end

  it "finds things" do
    events = Event_Reporter.new #("full_event_attendees.csv")
    events.load
    # binding.pry
    events.find(:first_name, "John")
    expect(events.queue_count).to eq(63)
  end

  it "finds clears the queue" do
    events = Event_Reporter.new #("full_event_attendees.csv")
    events.load
    # binding.pry
    events.find(:first_name, "John")
    expect(events.count).to eq(63)
    events.queue_clear
    expect(events.queue).to eq([])
  end

  it "Lists the commands" do
    events = Event_Reporter.new #("full_event_attendees.csv")
    events.load
    binding.pry

  end
end
