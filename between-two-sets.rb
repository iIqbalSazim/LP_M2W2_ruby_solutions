# https://www.hackerrank.com/challenges/between-two-sets/problem?isFullScreen=true

def getTotalX(a, b)
    res = []
    
    for i in a.max()..b.min()
        a.each{|el| 
            res.push(i) if i % el == 0
            res = res.select{|x| x % el == 0 }
        } 
    end
    res.uniq!
    
    b.each {|el|
       res = res.select {|i| el % i == 0 }
    }
    
    return res.length
end

input_a = [3, 4]
input_b = [24, 48]
expected_output = 2
output = getTotalX(input_a, input_b)

puts "Input: a: #{input_a} b: #{input_b}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"
