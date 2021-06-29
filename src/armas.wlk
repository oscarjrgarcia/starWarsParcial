import habitantes.*

class Arma {
	method potenciaQueOtorga(soldado)
}

class Pistolete inherits Arma {
	const property largo
	
	override method potenciaQueOtorga(soldado) = if(soldado.edad() > 30) {largo * 3} else {largo * 2}
}

class Espadon inherits Arma {
	const property peso
	
	override method potenciaQueOtorga(soldado) = if(soldado.edad() < 40) {peso / 2} else {6}
}
