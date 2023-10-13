# https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem?isFullScreen=true

def climbingLeaderboard(ranked, player)
    ranked.uniq!
    res = []
    
    player.each {|el| 
        if el >= ranked.first
            res.push(1)
        elsif el < ranked.last
            res.push(ranked.length + 1)
        else
            s = 0
            e = ranked.length - 1
            while s <= e
                m = (s + e) / 2
                if ranked[m] == el
                    res.push(m + 1)
                    break
                elsif ranked[m] > el
                    s = m + 1
                else
                    e = m - 1 
                end
            end
            if s > e
                res.push(s+1)
            end
        end
    }
 
    return res
end

input_ranked = [100, 100, 50, 40, 40, 20, 10]
input_player = [5, 25, 50, 120]
expected_output = [6, 4, 2, 1] 
output = climbingLeaderboard(input_ranked, input_player)

puts "Input: \n\tRanked: #{input_ranked} \n\tPlayer: #{input_player}"
puts "\nExpected Output: #{expected_output}"
puts "\nOutput: #{output}"
