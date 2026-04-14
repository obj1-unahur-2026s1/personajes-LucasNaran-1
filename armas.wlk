object ballesta {
    var cantidadDeFlechas = 10

    method potencia() = 4

    method estaCargada() = cantidadDeFlechas > 0
    
    method usar() {
        if (self.estaCargada()){
            cantidadDeFlechas -= 1
        }        
    }   
}
object jabalina {
    var estaCargada = true

    method potencia() = 30

    method usar() {
        if (estaCargada){
            estaCargada = false
        }
    }    

    method recargar(){
	    if (not estaCargada){
		estaCargada = true
	    }
    }
}