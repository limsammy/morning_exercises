one_to_one_hundred_squared_a = *(1..100).map {|num| num ** 2}

a = one_to_one_hundred_squared_a.inject(:+)


one_to_one_hundred_b = *(1..100).inject(:+)
b = one_to_one_hundred_b.map {|num| num ** 2}[0]

puts b - a