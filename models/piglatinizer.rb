class PigLatinizer
  
  attr_reader :text
  
  def initialize #(text)
    @text = text 
  end 
  
  def piglatinize(text)
    pig_latined = ""
    text_array = text.split(" ")
    text_array.each do |word|
      if word[0].downcase.match(/[aeiou]/) != nil 
        word += "way"
        pig_latined += word + " "
      else 
        vowel_check = word.split("")
        found_vowel = false 
        n = 0 
        until found_vowel == true 
          if vowel_check[n].match(/[aeiou]/) != nil
            word = word[n..(word.length-1)] + word[0..(n-1)] + "ay "
            found_vowel = true 
          end 
          n += 1 
        end  
        pig_latined += word
      end
    end 
    pig_latined.strip 
    
  end 
  
  def to_pig_latin(text) 
    pig_latined = ""
    text_array = text.split(" ")
    text_array.each do |word|
      if word[0].downcase.match(/[aeiou]/) != nil 
        word += "way"
        pig_latined += word + " "
      else 
        vowel_check = word.split("")
        found_vowel = false 
        n = 0 
        until found_vowel == true 
          if vowel_check[n].match(/[aeiou]/) != nil
            word = word[n..(word.length-1)] + word[0..(n-1)] + "ay "
            found_vowel = true 
          end 
          n += 1 
        end  
        pig_latined += word
      end
    end 
    pig_latined.strip 
    
  end 
  
end 


=begin 
class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

p = PigLatinizer.new

puts p.piglatinize("pork")

=end 