# https://www.hackerrank.com/challenges/bon-appetit/problem?isFullScreen=true&utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign

def bonAppetit(bill, k, b)
    bill.delete_at(k)
    actual_bill = bill.sum()/2
    if b == actual_bill
        print "Bon Appetit"
    else
        print b - actual_bill
    end
end

bill = [3,10,2,9]
k = 1
b = 12

puts "Expected: 5"

puts "Output: " 
bonAppetit(bill, k, b)
puts "\n"
