# https://www.hackerrank.com/challenges/day-of-the-programmer/problem?isFullScreen=true

def dayOfProgrammer(year)
    day = 0
    month = 9
    if year == 1918
        day = 256 - 230 # transition year so lost 13 days
    elsif year < 1918
        if year % 4 == 0
            day = 256 - 244
        else
            day = 256 - 243
        end
    else
        if year % 400 == 0 || year % 100 != 0 && year % 4 == 0
            day = 256 - 244
        else
            day = 256 - 243
        end
    end
    return "#{day.to_s.rjust(2,'0')}.#{month.to_s.rjust(2,'0')}.#{year}"
end

input = 1918
expected_output = "26.09.1918"
output = dayOfProgrammer(input)

puts "Input: #{input}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"

