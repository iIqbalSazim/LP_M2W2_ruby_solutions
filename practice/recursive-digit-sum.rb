# https://www.hackerrank.com/challenges/recursive-digit-sum/problem?isFullScreen=true

def superDigit(n, k=1)
    p = n.to_i.digits.sum * k
    if p.to_s.length == 1
        return p
    else
        superDigit(p)
    end
end

n = 148
k = 3

puts "Expected output: 3\n"

puts "Output: #{superDigit(n, k)}"
