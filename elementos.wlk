object castillo {
    var nivelDeDefensa = 150

    method altura() = 20

    method valorQueOtorga() = nivelDeDefensa * 0.2

    method recibirAtaque(potencia){
        nivelDeDefensa -= potencia
    }
    
    method recibirTrabajo() {
      nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }    
}
object aurora {
    var estaViva = true

    method estaViva(){
        return estaViva
    }

    method altura() = 1

    method valorQueOtorga() = 15

    method recibirTrabajo() {
      //está vacia porque recibe el ataque pero no le pasa nada.
    }
  
    method recibirAtaque(potencia) { if (potencia >= 10) estaViva = false }
    
    /*
    el method de arribe es un atajo de lo que sería este de abajo
    method recibirAtaque(potencia){
        if (potencia >= 10){
            estaViva = false
        }
    }
    */
}
object tipa {
    var altura = 8

    method altura() = altura

    /*
    el method de arribe es un atajo de lo que sería este de abajo
    method altura() {
        return  altura     
    }
    */
    
    method valorQueOtorga() = altura*2

    method recibirTrabajo() {
      altura += 1
    }
    method recibirAtaque(potencia){
        //está vacia porque recibe el ataque pero no le pasa nada.
    }
}