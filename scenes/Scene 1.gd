extends "res://objects/Dialog.gd"
# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything above this line
# ---------------------------------------------------------------------------------------------------------------------

# GOAL: Write and read to the screen

# A variable is a place to store information. Information can be almost anything,
# like text, numbers or even whole scenes. There information stored in a varaible
# can be accessed or changed at any time.

# Here are two new functions 
# write () writes a string of text to the screen
# read () returns the text that you type

# INSTRUCTIONS
# Modify the code below.
# Ask a different question
# Then write the answer to the screen

func start ():
	write ("Well hello there.")
	write ("What is your name?")	
	var name = read ()
	write ("Hi, " + name)





































# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything below this line
# ---------------------------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.

func main (userdata):
	start()
	pass