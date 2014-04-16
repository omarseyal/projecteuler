require 'prime'

beginning_time = Time.now

sum_squares = 0
square_sum = 0

(1...101).each do |n|
  sum_squares += (n**2)
  square_sum += n
end

square_sum = square_sum**2

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{square_sum - sum_squares} -- (#{square_sum} - #{sum_squares})"
