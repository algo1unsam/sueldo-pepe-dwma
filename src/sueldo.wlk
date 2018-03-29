object pepe {
	var categoria = cadete
	var dias = 0
	var presentismo = presentismo1
	var resultado = resultado1
	
	method setCate(nuevoCate) {
		categoria = nuevoCate
	}
	
	method setDias(nuevoDias) {
		dias = nuevoDias
	}
	
	method setPrese(nuevoPrese) {
		presentismo = nuevoPrese
	}
	
	method setResu(nuevoResu) {
		resultado = nuevoResu
	}
	
	method sueldo() {
		return categoria.neto() + presentismo.monto(dias) + resultado.monto(categoria.neto())
	}
}

object gerente {
	method neto() = 1000
}

object cadete {
	method neto() = 1500
}

object presentismo1 {
	method monto(dias) {
		if(dias == 0)
			return 100
		else if(dias == 1)
			return 50
		else
			return 0
	}
}

object presentismo2 {
	method monto(dias) = 0
}

object resultado1 {
	method monto(neto) = 0.1 * neto
}

object resultado2 {
	method monto(neto) = 80
}

object resultado3 {
	method monto(neto) = 0
}