#1. Write a program to find factorial of the given number

puts "Give a number:"
n = gets.to_i

def factorial(num)
	if num == 0 then 
		1
	else
	 	num * factorial(num-1)
	end
end
print "The factorial of #{n} is: ", factorial(n)