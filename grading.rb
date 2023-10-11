# https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true

def gradingStudents(grades)
    roundedGrades = grades.map { |grade| 
        if grade >= 38
            i = grade
            i += 1 while i % 5 != 0
            i - grade < 3 ? i : grade 
        else
            grade
        end
    }
    
    return roundedGrades
end

input = [73, 67, 38, 33]
expected_output = [75, 67, 40, 33]
output = gradingStudents(input)

puts "Input: #{input}"
puts "Expected Output: #{expected_output}"
puts " "
puts "Output: #{output}"
