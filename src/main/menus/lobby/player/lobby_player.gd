"""
Handles basic information for a player that is inside
of the lobby.

Author: Jacob Singleton & Kang Rui Yu
"""


extends Control


var _username: String
var _class_id: int = 0
var _input_id: int = 0
var _team: int = 1
var _host: bool = false


func get_username() -> String:
	"""
	Returns the username of the player in the lobby.
	"""

	return _username


func set_username(username: String) -> void:
	"""
	Sets the username of the player in the lobby.
	"""

	_username = username


func get_class_id() -> int:
	"""
	Gets the class id of the player in the lobby.
	"""
	return _class_id


func set_class_id(class_id: int) -> void:
	"""
	Sets the class id of the player in the lobby.
	"""
	_class_id = class_id

	$Character.texture = characters.get_character_portrait(class_id)


func get_input_id() -> int:
	"""
	Gets the input id of the player in the lobby
	"""
	return _input_id


func set_input_id(input_id) -> void:
	"""
	Sets the input id of the player in the lobby.
	"""
	_input_id = input_id


func get_team() -> int:
	"""
	Gets the team number of the player in the lobby.
	"""
	return _team


func set_team(team: int) -> void:
	"""
	Sets the team number of the player in the lobby.
	"""
	_team = team


func is_host() -> bool:
	"""
	Returns true if the player is the host.
	"""

	return _host


func set_host(host: bool) -> void:
	"""
	Sets whether the current player should be the host or not.
	"""

	_host = host


func set_text(username: String) -> void:
	"""
	Sets the username of the player.
	"""

	$Name.text = username
