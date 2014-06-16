class Scheduler

  def initialize(input)
    @input = input
  end

  def consecutive_activities
    i = 0
    activity_array = []
    count = @input.length
    while i < count
      if @input[i] && @input[i] == (@input[i + 1])
        activity_array << [@input[i], 2]
        i+=2
      else
        activity_array << [@input[i], 1]
        i+=1
      end
    end
    activity_array
  end

  def validator
    @input.each_with_index do |activity, index|
      if activity[1] < 2 && index != @input.length - 1
        return false
      end
    end
    true
  end
end