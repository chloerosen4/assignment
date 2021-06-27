def calcMinProcessors(start_times, end_times) 
  checks = [start_times, end_times].flatten.sort.uniq
  active = 0
  max_active = 0
  checks.each do |minute|
    if start_times.include?(minute)
      active += 1
    end
    if active > max_active
      max_active = active
    end
    if end_times.include?(minute)
      active -= 1
    end
  end
  return max_active
end

start_times = [910, 952, 1000, 1115, 1510, 1820]
end_times = [910, 1200, 1120, 1130, 1900, 2000]
output = calcMinProcessors(start_times, end_times)
puts "Output: #{output}" # => 3

start_times = [933, 1142, 1231]
end_times = [1000, 1200, 1240]
output = calcMinProcessors(start_times, end_times)
puts "Output: #{output}" # => 1
