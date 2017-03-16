class Fibonacci
	def atIndex(n)
		a = 0
		b = 1

		n.times do
			temp = a
			a = b
			b = temp + b
		end

		return a
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