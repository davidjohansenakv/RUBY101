# Ask the user for two numbers
# Ask the user for an operation to perform
# Perform the operation on the two numbers
# Output the result

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's the first number?: ")
numberone = Kernel.gets().chomp().to_f
Kernel.puts("You chose " + numberone.to_s + "!")

Kernel.puts("What's the second number? ")
numbertwo = Kernel.gets().chomp().to_f
Kernel.puts("You chose " + numbertwo.to_s + "!")

Kernel.puts("What operation do you want to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

case operator
when '1'
  result = numberone + numbertwo
when '2'
  result = numberone - numbertwo
when '3'
  result = numberone * numbertwo
when '4'
  result = numberone / numbertwo
else
  result = 0
end

Kernel.puts("The result is " + result.to_s)

