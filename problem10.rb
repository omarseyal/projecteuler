beginning_time = Time.now

def is_prime?(n)
  return false if n <= 1
  return true if n == 2
  return false if n % 2 == 0
  
  # Only need to check up to square root
  (3..Math.sqrt(n).to_i).step(2) do |i|
    return false if n % i == 0
  end
  true
end

sum = 2  # Start with 2 since we'll skip evens
limit = 2_000_000

# Check odd numbers only since we already counted 2
(3...limit).step(2) do |num|
  sum += num if is_prime?(num)
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{sum}."
