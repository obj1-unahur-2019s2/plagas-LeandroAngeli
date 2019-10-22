import objetivosdeataque.*

class Plaga {
	var poblacion = 0
	
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	
	method efectoDeAtaque(){
		 poblacion +=  poblacion * 0.1
	}
	
	method atacar(objetivo){
		objetivo.bajoAtaque(self)
		self.efectoDeAtaque()	
	}
	
}	


class PlagaMosquitos inherits Plaga {
	
	method nivelDeDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedades(){
		return super() and poblacion % 3 == 0
	}
	
}

class PlagaCucarachas inherits Plaga {
	var property pesoPromedio
	
	method nivelDeDanio(){
		return poblacion / 2 	
	}	
		
	override method transmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	
	override method efectoDeAtaque(){
		super()
		pesoPromedio += 2
	}
}

class PlagaGarrapatas inherits PlagaPulgas{

	
	override method efectoDeAtaque(){
		poblacion += poblacion * 0.2
		
	}
	
}

class PlagaPulgas inherits Plaga {
	
	method nivelDeDanio() {
		return poblacion * 2
	}
	
}
