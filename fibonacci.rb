require 'prime'

class Fibonacci
	def primeCheck(n)
		if n.prime?
			prime = " prime"
		else
			prime = " not prime"
		end
		return prime
	end

	def atIndex(n)
		first = 0
		second = 1

		n.times do
			temp = first
			first = second
			second = temp + second
		end

		puts "#{first}, #{primeCheck(first)}"
	end

	def range(n)
		n.times do |i|
			final = atIndex(i)
			puts final
		end
	end

	def inputReader
		puts "Please enter amount of fibonacci sequence to print"
		print ">"
		input = gets.chomp.to_i
		return range(input)
	end
end

fib = Fibonacci.new

# fib.range(25)
fib.inputReader