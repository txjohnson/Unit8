extends Node2D

onready var outctrl = get_node("Panel/RichTextLabel")
onready var inctrl  = get_node("Panel/LineEdit")

var proceed   :Semaphore
var sequencer :Thread

var input :String

func clear ():
	outctrl .clear()
	for i in range(0, 24):
		outctrl.newline()
	
func write (astring):
	outctrl.add_text (astring)
	outctrl.newline()
	
func read():
	inctrl.editable = true
	inctrl.grab_focus()
	proceed .wait()
	return input

func _ready():
	clear()
	proceed   = Semaphore.new()
	sequencer = Thread.new()
	sequencer .start (self, "main")
	
func _on_LineEdit_text_entered(new_text):
	input = new_text
	inctrl.clear()
	inctrl.editable = false
	proceed .post()
