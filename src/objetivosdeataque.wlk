import plagas.*

class Hogar{
	var property nivelDeMugre
	var property nivelDeConfort
	
	method buenHogar(){
		return nivelDeMugre <= nivelDeConfort / 2
	}
	
	method bajoAtaque(atacante){
		nivelDeMugre += atacante.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadDeProduccion
		
	method buena(){
		return capacidadDeProduccion > nivelDeHuerta.nivel() 
	}

	method bajoAtaque(atacante){
		if (atacante.transmiteEnfermedades()) 
				{ ( atacante.nivelDeDanio() * 0.9 ) + 10 }
						
						else { atacante.nivelDeDanio() * 0.9 }
	}
}

object nivelDeHuerta{
	var property nivel
}


class Mascota{
	var property nivelDeSalud
	
	method esBuena(){
		return nivelDeSalud >= 250
	}

	method bajoAtaque(atacante){
		if (atacante.transmiteEnfermedades()) 
				{ nivelDeSalud -= atacante.nivelDeDanio()}
			
		
	}
}