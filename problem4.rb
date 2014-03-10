max = 999*999
min = 900*900

beginning_time = Time.now
solution = 0;
base = 0
vals = []

x = max

begin
	if (x.to_s.reverse == x.to_s)
		vals << x
	end
	x -= 1
end while (x >= min)

vals.each do | x |
	if ( x%10 == 9 )
		y = 999
		begin
			if ( x%y == 0 )
				solution = x
				base = y
			end
			y -= 1
		end while (y >= 100) && ( (x/y) < 1000)
	end
end


end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{solution}; a product of #{base} and #{solution/base}."