class PigLatinizer
attr_accessor :new_text, :original_text

def initialize
end

def piglatinize(original_text)
  sentence_array = original_text.split(" ")

pig_latin_sentence = []

sentence_array.each do |word|

  if word[0].match(/[aeiouAEIOU]/)
    @new_text = word << "way"
  else

  beginning = ""
  word_array = word.split("")
  word_array_1 = word.split("")

  word_array.each do |letter|
    #binding.pry
      break if letter.match(/[aeiouAEIOU]/)
      beginning << letter
      word_array_1.shift
      #binding.pry
    end

      @new_text = word_array_1.join("") << beginning << "ay"
end
pig_latin_sentence <<@new_text
end
pig_latin_sentence.join(" ")
end




end
