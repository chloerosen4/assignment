MINUTES_IN_DAY = 2459

def calcMinProcessors(start_times, end_times) 
  total_active = []
  0.upto(MINUTES_IN_DAY) do |minute|
    active = 0
    start_times.each_with_index do |start, index|
      if minute >= start && minute <= end_times[index]
        active += 1
      end
    end
    total_active << active
  end
  return total_active.max
end

start_times = [910, 952, 1000, 1115, 1510, 1820]
end_times = [910, 1200, 1120, 1130, 1900, 2000]
output = calcMinProcessors(start_times, end_times)
puts "Output: #{output}" # => 3

start_times = [933, 1142, 1231]
end_times = [1000, 1200, 1240]
output = calcMinProcessors(start_times, end_times)
puts "Output: #{output}" # => 1
