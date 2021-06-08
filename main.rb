require "colorize"
load "methods/conv-formula.rb"
load "methods/symbols.rb"

orig_temp = "Temp1: ".light_yellow
conv_temp = "Temp2: ".light_blue
not_valid_input = "Not a valid numeric input".light_red
not_valid_option = "Not a valid option".light_red

unit_symbols = {
	:C => "C",
	:F => "F",
	:K => "K"
}

print """▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
Choose a conversion option:             
➣ [a] = Celsius to Fahrenheit        
➣ [b] = Celsius to Kelvin
➣ [c] = Fahrenheit to Celsius
➣ [d] = Fahrenheit to Kelvin
➣ [e] = Kelvin to Celsius
➣ [f] = Kelvin to Fahrenheit

Nota Bene: Please select only
  	   the letter of the
	   option of your
	   choice in lowercase
▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
""".light_green

# Index Position 0    1    2    3    4    5 
options = Array["a", "b", "c", "d", "e", "f"]
print "Option: ".light_green
users_choice = gets.chomp()

if users_choice == options[0] # selects option "a" as the index position for it is 0
	then # convert celsius to fahrenheit

	print "\n▃▃▃ Celsius to Fahrenheit ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/ # to accept only numeric data from the user
		then # that's a valid numeric input; proceed to converon

		print conv_temp
		print c_to_f(temperature.to_f) # to_f means to convert input to a float; not fahrenheit
		print degree_symbol(:F)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	else
		print not_valid_input
	end

elsif users_choice == options[1]
	then # convert from celsius to kelvin

	print "\n▃▃▃ Celsius to Kelvin ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/
		then 

		print conv_temp
		print c_to_k(temperature.to_f)
		print :K # Kelvin is an absolute temperature scale. does not have a degree sign
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	else
		print not_valid_input
	end
	
elsif users_choice == options[2]
	then # convert from fahrenheit to celsius

	print "\n▃▃▃ Fahrenheit to Celsius ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/
		then 

		print conv_temp
		print f_to_c(temperature.to_f)
		print degree_symbol(:C)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	else
		print not_valid_input
	end

elsif users_choice == options[3]
	then # convert from fahrenheit to kelvin

	print "\n▃▃▃ Fahrenheit to Kelvin ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/
		then 

		print conv_temp
		print f_to_k(temperature.to_f)
		print :K
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green

	else
		print not_valid_input
	end

elsif users_choice == options[4]
	then # convert from kelvin to celsius

	print "\n▃▃▃ Kelvin to Celsius ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/
		then 

		print conv_temp
		print k_to_c(temperature.to_f)
		print degree_symbol(:C)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
		
	else
		print not_valid_input
	end


elsif users_choice == options[5]
	then # convert from kelvin to fahrenheit

	print "\n▃▃▃ Kelvin to fahrenheit ▃▃▃\n".light_green
	print orig_temp

	temperature = gets.chomp()

	if temperature =~ /\d/
		then 

		print conv_temp
		print k_to_f(temperature.to_f)
		print degree_symbol(:F)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
		
	else
		print not_valid_input
	end

else
	print not_valid_option
	print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
end

# Option if the user wants to end the execution of the code
exit_options = Array["a", "b"]
puts """\nConvert another temperature?
➣ [a] = Yes 
➣ [b] = No
▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
""".light_green
print "Option: ".light_green
end_code = gets.chomp()

if end_code == exit_options[0]
	then # terminate the code
	system ("ruby main.rb")
elsif end_code == exit_options[1]
	then # terminate the code
	print "▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	exit!
else # if the user did not input either option "a" or "b"
	puts "▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	puts not_valid_option
	puts "Will terminate the code...".light_yellow
	exit!
end