import accesorios.*
import bicicletas.*

class Deposito
{
	const property bicis = #{}
	
	method bicisRapidas()             = bicis.filter          ({ b=>b.velocidadDeCrucero() > 25 })
	method marcasBicis()              = bicis.map             ({ b=>b.marca()                   }).asSet()
	method esNocturno()               = bicis.all             ({ b=>b.tieneLuz()                })
	method hayBiciParaLlevarCarga(kg) = bicis.any             ({ b=>b.carga() > kg              })
	method biciMasRapida()            = bicis.max             ({ b=>b.velocidadDeCrucero()      })
	method bicisLargas()              = bicis.filter          ({ b=>b.largo() > 170             })
	method cargaTotalBicisLargas()    = self.bicisLargas().sum({ b=>b.carga()                   })
	method bicisSinAccesorios()       = bicis.count           ({ b=>b.accesorios() == #{}       })
	method cualesSonCompanieras(bici) = bicis.filter          ({ b=>b.sonCompanieras(bici)      })
}
