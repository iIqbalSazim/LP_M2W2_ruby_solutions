# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem?isFullScreen=true

def breakingRecords(scores)
    most_reference = scores[0]
    least_reference = scores[0]
    
    most_count = 0
    least_count = 0
    
    scores.each {|i| 
        if i < least_reference 
            least_reference = i
            least_count += 1
        elsif i > most_reference
            most_reference = i
            most_count += 1
        end
    }
    
    return [most_count, least_count]
end

input = [10, 5, 20, 20, 4, 5, 2, 25, 1]
expected_output = [2, 4]
output = breakingRecords(input)

puts "Input: #{input}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"
