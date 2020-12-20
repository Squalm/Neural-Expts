extends Node

class_name Neural

# Declare member variables here.
var rng_seed
var dims

# Called when the node enters the scene tree for the first time.
func _ready():
	rng_seed = 2020
	rand_seed(rng_seed)
	print_debug(create_net(dims))

func create_net(dims):
	var net = []
	var is_input = true
	for layer in range(1, dims.len()):
		for i in range(0, dims[layer]):
			
			if is_input:
				is_input = false
				net[layer].push_back([0])
			else:
				net[layer].push_back([0, rand_range(-1.0, 1.0), []])  # [output, bias, [weight per node on previous layer]]
				for x in range(1, dims[layer]):
					net[layer][2].append(rand_range(-1.0, 1.0))
	
	return net


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
