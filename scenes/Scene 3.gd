extends "res://objects/Dialog.gd"
# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything above this line
# ---------------------------------------------------------------------------------------------------------------------

# GOAL: Use variables to keep track of progress

# Variables can be updated to keep track of things that are changing over time
# We update variables using assignments.

# INSTRUCTIONS:
# Complete the loop below, so that sum keeps track of the sum of numbers
# so far.
# Write a message telling the user how many numbers are left to enter

func get_a_number ():
	var num = 0.0
	
	while num == 0.0:
		write ("Give me a number.")
		num = float (read())
		
		if num == 0.0:
			write ("Not quite. Try again.")
		else:
			break

	return num
	
func start ():
	write ("I can add up numbers.")
	var howmany = 0
	var sum = 0.0
		
	while howmany == 0:
		write ("How many numbers should at I add up? (Atleast two)")
		howmany = int (read())
		
		if howmany < 2:
			write ("I don't think that's right")
			write ("")
		else:
			break

	for i in range(0, howmany):
		var num = get_a_number()
		
		# Update sum here
		
		pass
	
	write ("The sum is " + str(sum))	












































# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything below this line
# ---------------------------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.

func main (userdata):
	start()
	pass