import planeta.*
import armas.*

class Persona {
	var property edad 
	
	method potencia() = 20
	method inteligencia() = if (self.edad().between(20,40)) {12} else {8}
	method esDestacada() = self.edad() == 25 or self.edad() == 35
	
	method ofrecerTributo(planeta) {}
	
	method valor() = self.potencia() + self.inteligencia()
	method esValioso() = self.valor() >= 40
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property tecnicas = 2
	
	override method potencia() = super() + masaMuscular * tecnicas
	override method esDestacada() = super() or tecnicas > 5
	method entrenar(cantDias) {masaMuscular += cantDias * 0.2}
	method aprenderTecnica() {tecnicas += 1}
	
	override method ofrecerTributo(planeta) {planeta.construirMurallas(2)} 
}

class Docente inherits Persona {
	var property cursos = 0
	
	override method inteligencia() = super() + cursos * 2
	override method esDestacada() = cursos > 3
	
	override method ofrecerTributo(planeta) {planeta.fundarMuseo()}
	override method valor() = super() + 5
}

class Soldado inherits Persona {
	const property armas = #{}
	
	override method potencia() = super() + armas.sum({ a => a.potenciaQueOtorga(self)})
	override method ofrecerTributo(planeta) {planeta.construirMurallas(5)}
}
