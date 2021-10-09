import accesorios.*

class Bicicleta {
	var property rodado     = 0
	var property largo      = 0
	var property marca      = 0
	var property accesorios = #{}
	
	method altura()                       = rodado * 2.5 + 15
	method velocidadDeCrucero()           = if (largo > 120) { rodado + 6 } else { rodado + 2 }
	method cantidadDeAccesoriosLivianos() = accesorios.count({ unaCosa => unaCosa.peso() < 1 })
	method peso()                         = accesorios.sum  ({ a=>a.peso()     }) + rodado / 2
	method carga()                        = accesorios.sum  ({ a=>a.carga()    })
	method tieneLuz()                     = accesorios.any  ({ a=>a.luminoso() })
	method sonCompanieras(bicicleta)
	{
		const bicicletasCompanieras = #{bicicleta, self}
		
		if (bicicletasCompanieras.size() > 1) return self.marca() == bicicleta.marca() && (self.largo() - bicicleta.largo()).between(-10, 10)
		else
		{
			self.error("La bicicleta no se puede comparar a si misma")
			return false
		}
	}
}