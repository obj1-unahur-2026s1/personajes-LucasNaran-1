import elementos.*
import armas.*

object luisa {
    var personajeActual = floki

    method asignarPersonajeActual(personaje) {
        personajeActual = personaje      
    }

    method aparece(elemento) {
      personajeActual.encontar(elemento)
    }
}
object floki{
    var armaActual = ballesta

    method armaActual() {
        return armaActual
    }

    method cambiarArma(arma) { armaActual = arma }

    method encontrar(elemento){
        armaActual.usar()
        elemento.recibirAtaque(armaActual.potencia())
    }
}
object mario{
    var valorRecolectado = 0
    var ultimaAltura = 0

    method esFeliz() = valorRecolectado >= 50 or ultimaAltura >= 10

    /* 
    el method de arribe es un atajo de lo que sería este de abajo
    NO HACE FALTA DECLARAR LA VARIABLE BOOLEANA PORQUE SE "CREA" AL RESPONDERSE 
    method esFeliz() {
        if (valorRecolectado >= 50 or ultimaAltura >= 10){
             esFeliz = true
        } 
        return esFeliz      
    }
    */
        
    method encontrar(elemento) {
        ultimaAltura = elemento.altura()
        valorRecolectado += elemento.valorQueOtorga()
        elemento.recibirTrabajo()
    }
}