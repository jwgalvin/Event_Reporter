require 'pry'
require 'pry'
require './lib/event_reporter'
require 'Rspec'

describe Event_Reporter do
  it "event_reporter returns an empty array when intialized" do
    events = Event_Reporter.new("full_event_attendees.csv")

    expect(events).to be_a(Event_Reporter)
    expect(events.queue).to eq([])
  end

end
