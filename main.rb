require "colorize"
load "methods/conv-formula.rb"
load "methods/symbols.rb"

orig_temp = "Temp1: ".light_yellow
conv_temp = "Temp2: ".light_blue

unit_symbols = {
	:C => "C",
	:F => "F",
}

print """▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
Choose a conversion option:             
➣ [a] = Celsius to Fahrenheit        
➣ [b] = Fahrenheit to Celsius    

Nota Bene: Please select only
  	   the letter of the
	   option of your
	   choice in lowercase
▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
""".light_green

# Index Position 1    2    3    4
options = Array["a", "b", "c", "d"]
print "Option: ".light_green
users_choice = gets.chomp()

if users_choice == options[0] 
	then # convert celsius to fahrenheit

	print "\n▃▃▃ Celsius to Fahrenheit ▃▃▃\n".light_green
	print orig_temp

	fahrenheit = gets.chomp()

	if fahrenheit =~ /\d/
		then # that's a valid numeric input; proceed to converison

		print conv_temp
		print c_to_f(fahrenheit.to_f) # to_f means to convert input to a float; not fahrenheit
		print degree_symbol(:F)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	else
		print "Not a valid numeric input".light_red
	end

elsif users_choice == options[1]
	then # convert celsius to fahrenheit

	print "\n▃▃▃ Fahrenheit to Celsius ▃▃▃\n".light_green
	print orig_temp

	celsius = gets.chomp()

	if celsius =~ /\d/
		then # that's a valid numeric input; proceed to converison

		print conv_temp
		print c_to_f(celsius.to_f)
		print degree_symbol(:C)
		print "\n▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃".light_green
	else
		print "Not a valid numeric input".light_red
	end

else
	print "Not a valid option".light_red
end
