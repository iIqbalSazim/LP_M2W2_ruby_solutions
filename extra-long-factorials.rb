# https://www.hackerrank.com/challenges/extra-long-factorials/problem?isFullScreen=true

def extraLongFactorials(n)
    res = n
    for i in 1...n
        res *= n - i
    end
    
    return res # for this to work in hackerRank website change the return statement to `print res`
end

input = 25
expected_output = 15511210043330985984000000
output = extraLongFactorials(input)

puts "Input: #{input}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"
