class Fibonacci
	def atIndex(n)
		first = 0
		second = 1

		n.times do
			temp = first
			first = second
			second = temp + second
		end

		return first
	end

	def range(n)
		n.times do |i|
			final = atIndex(i)
			puts final
		end
	end
end

fib = Fibonacci.new

fib.range(25)