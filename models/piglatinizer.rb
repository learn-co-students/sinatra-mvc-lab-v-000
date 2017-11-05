class PigLatinizer
  attr_reader :text

  def piglatinize(word)
     if word[0].scan(/[aeiouAEIOU]/) != []
       word += "way"
     else
       index = word.index(/[aeiou]/)
       word_core = word.slice(index..word.size)
       word_start = word.slice(0..index - 1)
       pig_word = word_core + word_start + "ay"
     end
   end

   def to_pig_latin(string)
     string.split.collect{|word| piglatinize(word)}.join(" ")
   end
end
