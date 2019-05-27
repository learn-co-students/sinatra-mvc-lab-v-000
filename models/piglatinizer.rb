class PigLatinizer

   VOWELS= ["a","e","i","o","u","A","E","I","O","U"]
    attr_accessor :text

  #  def initialize(words)
  #    @text= words
  #  end

   def piglatinize(words)
    # abrir el text en palabras y ponerlo en una array
      data= words.split(' ')
      data2= []

    #recorrer el array y cambiar segun las reglas
    data2 =  data.map {|e|

          if   VOWELS.include?(e[0]) #&& !VOWELS.include?(e[1]))||(VOWELS.include?(e[0]) && VOWELS.include?(e[1])) 
               e << "way"
          elsif !VOWELS.include?(e[1]) && !VOWELS.include?(e[2])
               e= e[3..-1]+ e[0..2] +"ay"                     #spray

          elsif  !VOWELS.include?(e[1])
                     e= e[2..-1]+ e[0..1] +"ay"   #prays
          else
                e= e[1..-1]+ e[0] +"ay"
          end
        }
      # volver a convertir el array en text
      return data2.join(" ")
     end

end
