def greeting

  puts "Welcome to the GA widget calculator. please type your name: "
  name = gets.chomp
  puts "\n" + "#{name}, This calculator computes addition, subtraction, multiplication, division and exponents."
end


def operator_type

  puts "\n" + "Type 1 to add, 2 to subtract, 3 to multiply, 4 to divide two numbers, or 5 for exponents: "
  operation_selection = gets.chomp.to_i

#   #if operation_selection == 1 
#     return "add"
#   elsif operation_selection == 2
#     return "subtract"
#   elsif operation_selection == 3
#     return "multiply"
#   elsif operation_selection == 4
#     return "divide"
#   elsif operation_selection == 5
#   else 
#     return "error"

#   end

# end

if operation_selection == 1 
    return "add"
  elsif operation_selection == 2
    return "subtract"
  elsif operation_selection == 3
    return "multiply"
  elsif operation_selection == 4
    return "divide"
  elsif operation_selection == 5
  	return "exponentialize"
  else 
    puts "error, " + "Must be 1 through 5... Please try again?"  

  end

end

def calculate_answer(operator, a, b)

  if operator == "add"
    return  a + b
  elsif operator == "subtract"
    return  a - b
  elsif operator == "multiply"
    return a * b
  elsif operator == "divide"
    return a / b
  elsif operator == "exponentialize"
	return a**b 
  end

end

again = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = operator_type()

  if current_calculation == "error" 
    puts "\n" + "Must be 1 through 5... Please try again?"  

  else
    puts "\n" + "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.chomp.to_i
    puts "\n" + "What is the second number you would like to #{current_calculation}: "
    second_number = gets.chomp.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "\n" + "The answer is #{answer}"
    puts "\n" + "Type 1 to run another calculation or anything else to end: "
    run_calculator = gets.chomp.to_i

    if run_calculator != 1

      puts "\n" + "Thanks for using the GA widget calculator! see you around)"

    end
  end
end