extends Area2D

@export var slime_speed : float = -30

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += Vector2(slime_speed,0) * delta


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.game_over()
		
