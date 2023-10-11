# https://www.hackerrank.com/challenges/time-conversion/problem?isFullScreen=true

def timeConversion(s)
    time = s[0..7]
    time_format = s[8..9]
    case time_format
    when 'PM'
        time[0,2] = (time[0,2].to_i + 12).to_s if s[0,2].to_i != 12
    when 'AM'
        time[0,2] = (time[0,2].to_i - 12).to_s.rjust(2,'0') if s[0,2].to_i == 12
    end
    
    return time
end


input = "07:05:45PM"
expected_output = "19:05:45"
output = timeConversion(input)

puts "Input: #{input}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"
