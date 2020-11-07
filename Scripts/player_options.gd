extends Control


# References
onready var option_fields: VBoxContainer = $MarginContainer/VBoxContainer
onready var name_field: LineEdit = option_fields.get_node("Name/LineEdit")
onready var class_option: OptionButton = option_fields.get_node("Class/OptionButton")
onready var input_option: OptionButton = option_fields.get_node("Input/OptionButton")
# States
var current_config: Resource = null # The current config being modified


func display_for(config: Resource) -> void: # Displays the information of the given player config
	name_field.text = config.name
	class_option.selected = config.class_id
	input_option.selected = config.input_id
	current_config = config
	

func update_name(name: String) -> void:
	current_config.name = name
	

func update_class(index: int) -> void:
	current_config.class_id = index
	
	
func update_input(index: int) -> void:
	current_config.input_id = index