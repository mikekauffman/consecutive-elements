require 'rspec'
require_relative '../lib/scheduler'

describe Scheduler do
  it 'validates a schedule' do
    input = ["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]
    expected =   [
      ["archery", 1],
      ["swimming", 2],
      ["crafts", 1],
      ["archery", 2],
      ["crafts", 1],
    ]
    schedule = Scheduler.new(input)
    expect(schedule.consecutive_activities).to eq(expected)
  end
end