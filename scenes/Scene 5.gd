extends "res://objects/Dialog.gd"
# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything above this line
# ---------------------------------------------------------------------------------------------------------------------

# GOAL: Write functions to complete the game

# In the game Cows and Bulls, you must guess a 4 digit number.
# For every correct digit in the correct place, you get a cow.
# For every correct digit in the wrong place, you get a bull.
# The goal is to use this information to guess the number.

# INSTRUCTIONS
# Write a function the counts how many cows are in a guess
# Write a function that counts how many bulls are in a guess

var rng = RandomNumberGenerator.new()

func check_cows (n, g):
	pass
	
func check_bulls (n, g):
	pass
	
func generate_number ():
	var raw = PoolByteArray()
	
	for i in range (0, 4):
		var digit = 48 + rng.randi() % 10
		raw .push_back (digit)
		
	return raw.get_string_from_ascii()
	
func start ():
	
	write ("Let's play Cow and Bulls")
	write ("I have a 4 digit number. Guess what it is.")
	write ("For every correct digit in the right place, you get a cow.")
	write ("For every correct digit in the wrong place, you get a bull.")
	write ("The game ends when you get 4 cows.")
	
	var playing = true
	var number = generate_number ()
	print ("debug: ", number)
	
	while playing:
		write ("")
		write ("What is your guess?")
		var guess = read()
		if len(guess) != 4:
			write ("Your guess must be 4 digits.")
			continue
		
		var cows = check_cows (number, guess)
		var bulls = check_bulls (number, guess)
		
		write ("Your guess: " + guess)
		write ("You have " + str(cows) + " cows and " + str(bulls) + " bulls")
		
		if cows == 4:
			write ("You found the number!.")
			playing = false












































# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything below this line
# ---------------------------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.

func main (userdata):
	start()
	pass
