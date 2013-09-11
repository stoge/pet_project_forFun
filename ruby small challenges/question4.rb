# 4. Write a program to swap two numbers without using a temporary variable.

puts "Give your 1st number"
n1 = gets.to_i
puts "Give your 2nd number"
n2 = gets.to_i

def swap(num1, num2)
	num1 = num1 + num2
	num2 = num1 - num2
	num1 = num1 - num2
	return num1 ,num2
end

print "You initial numbers were [#{n1}, #{n2}] and now ",  swap(n1,n2)