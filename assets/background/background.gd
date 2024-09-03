extends ParallaxBackground
class_name Background

# QUANDO O JOGO TIVER PRONTO, A VAR SERÁ EXECUTADA
@onready var _clouds: Array = [
	$CloudT1, $CloudT2, $CloudT3, $CloudT4,
	$CloudT5, $CloudT6, $CloudT7, $CloudT8
]

var _speed_values: Array[float] = [
	16.0, 16.0, 4.0, 4.0,
	8.0, 8.0, 12.0, 12.0
]

# FUNÇÃO DE VALOR CONSTANTE
# "_" OBJ PRIVADO
# "VOID" TIPO DE RETORNO É VAZIO
func _physics_process(_delta: float) -> void:
	
	var _i : int = 0
	
	# MOVE AS NUVENS
	for cloud in _clouds:
		# ACESSA OS VALORES DA LISTA COM BASE NO ÍNDICE, INICIANDO EM 1
		cloud.motion_offset.x -= _speed_values[_i] * _delta
		# ALTERA A VELOCIDADE DELAS
		_i += 1
	
