require 'prime'

beginning_time = Time.now

start_value = 1
end_value = 20

factors = {}

(1...21).each do |n|
  new_factors = n.prime_division
  new_factors.each do |factor_pair|
    if !(factors.has_key? factor_pair[0])
      factors[factor_pair[0]] = factor_pair[1]
    else
      factors[factor_pair[0]] = (factors[factor_pair[0]] > factor_pair[1]) ? (factors[factor_pair[0]]) : (factor_pair[1])
    end
  end
end

solution = 1

factors.each do |k, v|
  solution *= k**v
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts "The solution is #{solution}."

#(1...21).each do |n|
#  puts "  .. checking #{n} : #{solution} % #{n} = #{solution%n}"
#end

puts "The unique factors are: #{factors}"
