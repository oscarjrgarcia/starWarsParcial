import habitantes.*

class Planeta {
	const property habitantes = #{}
	var property museos
	
	var property longitudMurallas = 0
	
	method delegacionDiplomatica() = habitantes.filter({ h => h.esDestacada()})
	method valorInicialDeDefensa() = habitantes.filter({h => h.potencia() >= 30}).size()
	method esCulto() = museos >= 2 and habitantes.all({h => h.potencia() >= 10})
	method potenciaReal() = habitantes.sum({h => h.potencia()})
	
	method construirMurallas(cantAConstruir) {longitudMurallas += cantAConstruir}
	method fundarMuseo() {museos += 1}
	method potenciaAparente() = habitantes.map({h => h.potencia()}).max() * habitantes.size()
	method necesitaReforzarse() = self.potenciaAparente() >= self.potenciaReal() * 2
	method recibirTributo() {habitantes.forEach({h => h.ofrecerTributo(self)})}
	
	method habitantesValiosos() = habitantes.filter({ h => h.esValioso()})
	method apaciguarPlaneta(unPlaneta) {self.habitantesValiosos().forEach({h => h.ofrecerTributo(unPlaneta)})}
	
}