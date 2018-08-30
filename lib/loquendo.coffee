class Loquendo
    constructor: (@randomNum) ->
    
    
    getfrase: ->                        #Author for Quote #1
        authors = ["<p class=\"author\"> Carl Bard </p>", 
                                        #Autor for Quote #2
                   "<p class=\"author\"> Og Mandino </p>", 
                                        #Autor for Quote #3
                   "<p class=\"author\"> Denis Waitley </p>"]
                    
                    
                    #Quote 1
        quotes = ["Aunque nadie puede volver atrás y 
        hacer un nuevo comienzo, cualquiera puede comenzar a 
        partir de ahora y crear un nuevo final.", 
                    #Quote 2
        "Da la bienvenida cada mañana con una sonrisa. 
        Mira en el nuevo día como otro regalo especial de 
        su creador, otra oportunidad de oro.", 
                    #Quote 3
        "La felicidad no puede ser ganada, no es una propiedad. 
        Es la experiencia espiritual de vida de cada minuto con 
        amor, gracia y gratitud."]
        
        finalText = [authors[@randomNum], quotes[@randomNum]]
        
            
        return finalText


module.exports = Loquendo