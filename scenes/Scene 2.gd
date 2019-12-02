extends "res://objects/Dialog.gd"
# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything above this line
# ---------------------------------------------------------------------------------------------------------------------

# GOAL: Use a variable in a calculation

# Variables can be used in calculations just like plain numbers. Your input
# is a string, not a number. It needs to be converted first.

# INSTRUCTIONS
# Change the calculation below to convert from miles to kilometers.
# a mile is 1.60934 kilometers

func start ():
	var number :float = 0.0
	
	while true:	
		write ("I can convert days into minutes.")
		write ("Type in a number days. (Should not be zero.)")
		read()
		number = float (input)
		
		if number == 0:
			write ("I don't think that's right.")
			write ("")
		else:
			break

	var conversion = number * 24 * 60
	var answer = "There are " + str(conversion) + " minutes in " + str(number)
	if number == 1:
		answer += " day."
	else:
		answer += " days."
		 
	write (answer)	
	





































# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything below this line
# ---------------------------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.

func main (userdata):
	start()
	pass