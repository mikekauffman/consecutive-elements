require 'rspec'
require_relative '../lib/scheduler'

describe Scheduler do
  it 'counts consecutive activities in a schedule' do
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
  it ' validates that a schedule is not valid' do
    input =   [
      ["archery", 1],
      ["swimming", 2],
      ["crafts", 1],
      ["archery", 2],
      ["crafts", 1],
    ]
    schedule = Scheduler.new(input)
    expect(schedule.validator).to eq (false)
  end
  it ' validates that a schedule is valid' do
    input =     [
      ["archery", 2],
      ["swimming", 2],
      ["archery", 2],
      ["crafts", 1],
    ]
    schedule = Scheduler.new(input)
    expect(schedule.validator).to eq (true)
  end
end