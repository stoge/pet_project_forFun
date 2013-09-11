# 5. Write a program to swap two numbers using bitwise operators.

puts "Give your 1st number"
n1 = gets.to_i
puts "Give your 2nd number"
n2 = gets.to_i

def swap(num1, num2)
	num1 = num1 ^ num2
	num2 = num1 ^ num2
	num1 = num1 ^ num2
	return num1 ,num2
end

print "You initial numbers were [#{n1}, #{n2}] and now ",  swap(n1,n2)

=begin

Explanation:
i = 65 binary equivalent of 65 is 0100 0001
k = 120 binary equivalent of 120 is 0111 1000
i = i^k [Exclusive OR]
i...0100 0001
k...0111 1000
---------
val of i = 0011 1001
---------
k = i^k
i...0011 1001
k...0111 1000
---------
val of k = 0100 0001 binary equivalent of this is 65
---------( that is the initial value of i)
i = i^k
i...0011 1001
k...0100 0001
---------
val of i = 0111 1000 binary equivalent of this is 120
--------- (that is the initial value of k)

=end