beginning_time = Time.now

sum = 0

a = 1
b = 2
c = 0

begin
  sum += b if ( b%2 == 0 )

  c = a + b
  a = b
  b = c

end while (b < 4000000)

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{sum}."