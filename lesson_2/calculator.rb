# Ask the user for two numbers
# Ask the user for an operation to perform
# Perform the operation on the two numbers
# Output the result
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(ope)
  operator_dictionary = { '1' => 'adding', '2' => 'subtracting', '3'=>  'multiplying', '4'=>  'dividing' }
  operator_dictionary[ope]
end

prompt('Welcome to Calculator! Enter your name')

name = ''
loop do
  name = gets.chomp
  break unless name.empty?

  prompt("Please enter something as a name, I mean, come on. I'm not asking much, am I?")
end

puts("Thanks, #{name}")

loop do
  numberone = 0
  loop do
    prompt("What's the first number?: ")
    numberone = Kernel.gets.chomp.to_f
    break if valid_number?(numberone)

    prompt('Please try again. The number entered was invalid')
  end
  puts('You chose ' + numberone.to_s + '!')

  numbertwo = 0
  loop do
    prompt("What's the second number? ")
    numbertwo = Kernel.gets.chomp.to_f
    break if valid_number?(numbertwo)

    prompt('Please try again. The number entered was invalid')
  end

  puts('You chose ' + numbertwo.to_s + '!')

  result = 0
  loop do

    operator_prompt = <<-MSG
  What operation do you want to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG
    prompt(operator_prompt)
    operator = Kernel.gets.chomp

    puts("#{operation_to_message(operator)} the two numbers ... ")
    result = case operator
             when '1'
               numberone + numbertwo
             when '2'
               numberone - numbertwo
             when '3'
               numberone * numbertwo
             when '4'
               numberone / numbertwo
             end
    break if result

    prompt('Please choose one of the available options or be forever stuck here. Mwahahahaha')
  end

  Kernel.puts('The result is ' + result.to_s)

  prompt('Would you like to do another calculation? (y/yes) = continue')
  answer = gets.chomp.downcase

  break unless %w[y yes].include?(answer)
end

puts('Thanks for using Calculator!')
