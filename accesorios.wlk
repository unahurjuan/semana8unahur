object farolito
{
	const property peso     = 0.5
	const property carga    = 0
	const property luminoso = true
}

class Canastos
{
	var property   volumen  = 0
	const property peso     = volumen / 10
	const property carga    = volumen * 2
	const property luminoso = false
}

class MorralDeLaBici
{
	var property largo      = 0
	var property ojoDeGato  = false
	const property peso     = 1.2
	const property carga    = largo / 3
	const property luminoso = ojoDeGato
}

/*
 * Pregunta 5 - Una pregunta
 *  Pregunta: ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio?
 *  Respuesta: Debería crearse una nueva clase si el tipo de accesorio se piensa utilizar como un molde para tener muchos de ese tipo de accesorios, cada uno con propiedades diferentes del otro. Caso contrario, debería crearse un objeto.
 *     Dentro de lo posible, todos los accesorios deberían respetar el polimorfismo, es decir, deberían ser consistentes en que mensajes pueden procesar.
 *  Pregunta: Indicar qué hay que agregar, y qué hay que tocar.
 *  Respuesta: Se puede agregar nuevas propiedades u/o métodos, que luego deberían ser añadidas a todas las demás clases u/o objetos.
 */