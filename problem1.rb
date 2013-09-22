beginning_time = Time.now

sum = 0

1.upto(1000-1) { |x| sum += (((x%3==0) || (x%5==0))?(x):(0)) }

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{sum}."