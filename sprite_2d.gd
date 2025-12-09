extends Sprite2D


@export var move_speed = 200
@export var can_move = true
@export var change_color_at = 400

var start_color = self_modulate

func _process(delta):

	if can_move:
		var direction = Vector2.ZERO
		
		if Input.is_key_pressed(KEY_LEFT):
			direction.x -= 1
		if Input.is_key_pressed(KEY_RIGHT):
			direction.x += 1
		if Input.is_key_pressed(KEY_UP):
			direction.y -= 1
		if Input.is_key_pressed(KEY_DOWN):
			direction.y += 1
		
		position += direction * move_speed * delta
		

		if position.x > change_color_at:
			self_modulate = Color.RED
		elif position.x < -change_color_at:
			self_modulate = Color.BLUE
		else:
			self_modulate = start_color
		

		if Input.is_action_pressed("ui_select"):  
			scale = Vector2(1.5, 1.5)
		else:
			scale = Vector2(1, 1)
