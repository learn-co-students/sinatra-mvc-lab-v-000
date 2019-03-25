class Piglatin

   VOWELS= ["a","e","i","o","u"]
    attr_accessor :text

   def initialize(phrase)
     @text= phrase.downcase
   end

   def pigLatinizer
    # abrir el text en palabras y ponerlo en una array
      data= self.text.split(' ')
      data2= []

    #recorrer el array y cambiar segun las reglas
    data2 =  data.map {|e|
          if VOWELS.include?(e[0])
               e << "way"
          else
             e= e[1..-1]+ e[0] +"ay"
          end
     }
      data2
      binding.pry
     end
    # volver a convertir el array en text
    #Mostrar texto a traves del atributo de calse @text



end
data
