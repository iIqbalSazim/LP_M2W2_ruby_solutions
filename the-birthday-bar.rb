# https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true

def birthday(s, d, m)
    divisions = 0
    for i in 0..s.length
        sliced = s.slice(i, m)
        if sliced.length == m && sliced.sum == d
            divisions += 1
        end
    end
    return divisions
end

input_arr = [1, 2, 1, 3, 2]
input_day = 3
input_month = 2
expected_output = 2
output = birthday(input_arr, input_day, input_month)

puts "Input: \n\tArray: #{input_arr} \n\tDay: #{input_day}, Month: #{input_month}"
puts "\nExpected Output: #{expected_output}"
puts "\nOutput: #{output}"
