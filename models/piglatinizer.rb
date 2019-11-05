class PigLatinizer

   def piglatinize(word)
     if /[aeiou]/ === word[0].downcase
       "#{word}way"
     else
       first = word.split(/[aeiou]/).first
       word = word.sub(first,"")
       "#{word}#{first}ay"
     end
   end

   def to_pig_latin(string)
     string.split.map {|word| piglatinize(word)}.join(" ")
   end
 end
