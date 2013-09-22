beginning_time = Time.now

num = 600851475143


x = Math::sqrt(num).to_i

if (x%2 == 0)
	x -= 1
end

max = 0

begin
  max = x if ((num % x == 0) and x.prime?)
  x -= 2
end while ((x > 2) && (max == 0))

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{max}."