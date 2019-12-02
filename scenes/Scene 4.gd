extends "res://objects/Dialog.gd"
# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything above this line
# ---------------------------------------------------------------------------------------------------------------------

# GOAL: Write a parameterized function

# Some functions need additional information before they can do work.
# These type of functions are parameterized functions.
# A parameter is a variable that the function needs to do work.
# When we call such a function, we supply arguments.
# An argument is the values we supply to the function.
# When the function is doing work, the value of the arguments are used
# where ever the parameter occurs in the function.

# INSTRUCTIONS
# Write the body of the function that decides who wins in 
# rock paper scissors. The possible values for each
# parameter to the function is "rock", "paper", or "scissors"
# The function should return:
#        1 when player 1 wins
#        2 when player 2 wins
#        0 when its a tie
func chooseWinner (a, b):
	pass


func start ():
	var rng = RandomNumberGenerator.new()
	var choices = ["rock", "paper", "scissors"]
	var wins1 = 0
	var wins2 = 0
	
	var rounds = 0
	
	write ("Two bots will now play rock paper scissors.")
	
	while rounds == 0:
		write ("How many rounds to play?")
		rounds = int(read())
		if rounds > 0:
			break
		else:
			write ("I don't think that's right")
			write ("")
	
	for i in range (0, rounds):
		var bot1 = rng.randi() % 3
		var bot2 = rng.randi() % 3
		write ("")
		write ("Round " + str(i+1))
		write ("Bot 1 chose " + choices[bot1] + ".")
		write ("Bot 2 chose " + choices[bot2] + ".")
		var winner = chooseWinner (choices [bot1], choices [bot2])
		if winner == 1:
			write (choices[bot1] + " beats " + choices[bot2])
			wins1 += 1
		elif winner == 2:
			write (choices[bot2] + " beats " + choices[bot1])
			wins2 += 1
		else:
			write ("It's a tie!")

	write ("")
	write ("Bot 1 won " + wins1 + " rounds")
	write ("Bot 2 won " + wins2 + " rounds")














































# ---------------------------------------------------------------------------------------------------------------------
# Do not change anything below this line
# ---------------------------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.

func main (userdata):
	start()
	pass
