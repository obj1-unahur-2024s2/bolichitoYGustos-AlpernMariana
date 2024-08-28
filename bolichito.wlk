import objetos.*
import personas.*

object bolichito{
    var objetoEnMostrador = placa
    var objetoEnVidriera = remera

    method objetoEnVidriera(unObejetoEnVidriera){
        objetoEnVidriera = unObejetoEnVidriera
    }
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador(unObjetoEnMostrador){
        objetoEnMostrador=unObjetoEnMostrador
    }
    method objetoEnMostrador(){return objetoEnMostrador}

    method esBrillante(){return objetoEnMostrador.esBrillante()
    && objetoEnVidriera.esBrillante()}

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado(){
        return objetoEnMostrador.peso()> objetoEnVidriera.peso()
    }
    method tieneObjetoDeColor(unColor){
        return objetoEnMostrador.color() == unColor
        || objetoEnVidriera == unColor
    }
    method puedeMejorar(){
        return not self.estaEquilibrado() || self.esMonocromatico()
    }

    method puedeOfrecerAlgoA(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador)
        || unaPersona.leGusta(objetoEnVidriera)
    }
}