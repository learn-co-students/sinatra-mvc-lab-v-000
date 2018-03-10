class PigLatinizer
  attr_accessor :text
  @@vowels = ['a','e','i','o','u']
  
  # def initialize
  
  # end

# I wanted to make one method that handled both a word and a sentence,
# but the tests wanted two methods, so I repeated the method, because it was DRY-er.
  
  def piglatinize(text)
    array = text.split(" ")
    piggies = array.collect  do |word|
        
        
        if @@vowels.include?(word[0].downcase)
          word + "way"
        else 
          cluster = ""
          while !@@vowels.include?(word[0]) 
            cluster += word.slice!(word[0])
          end
            word + cluster + "ay"
        end
      end

        piggies.join(" ")
  end


  

  def to_pig_latin(text)
    array = text.split(" ")

      piggies = array.collect  do |word|
        
        
        if @@vowels.include?(word[0].downcase)
          word + "way"
        else 
          cluster = ""
          while !@@vowels.include?(word[0]) 
            cluster += word.slice!(word[0])
          end
            word + cluster + "ay"
        end
      end

        piggies.join(" ")
  end



end