# 2. Write a program to check whether the given number is even or odd.

puts "Give me a number"
n = gets.to_i

def evenodd(num)
	if num % 2 == 0 then
	 	"Even"
	else
		"Odd"
	end
end

print "#{n} is an ", evenodd(n), " number"