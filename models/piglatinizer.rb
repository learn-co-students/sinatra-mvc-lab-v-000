
class PigLatinizer

 def piglatinize(word)

 vowels = "AEIOUaeiou"
 exceptions = ["and", "an", "in"]
 if vowels.include? word[0]
      word << "way"
   elsif exceptions.include?(word)
     word
   else
     consonants = ""
     while !vowels.include?(word[0])
       consonants << word[0]
       word = word[1..-1]
     end
     word + consonants + "ay"
   end
 end

 def to_pig_latin(phrase)
    phrase.split.collect{|word| piglatinize(word)}.join(" ").gsub(".", "")
 end

end
