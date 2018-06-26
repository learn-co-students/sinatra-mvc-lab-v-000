require 'pry'
class PigLatinizer


def piglatinize(string)
  @string = string.split
  pig_latin_array =[]
  @string.each do |word|
    if word.match /^[^aeiouAEIOU]/
      word_array = word.split("")

      if word.match /^[^aeiouAEIOU]{3}/
        pig_latin = word_array.concat(word_array.slice!(0,3)).join+'ay'
        pig_latin_array << pig_latin
         # binding.pry
      elsif word.match /^[^aeiouAEIOU]{2}/
        pig_latin = word_array.concat(word_array.slice!(0,2)).join + 'ay'
        pig_latin_array << pig_latin
      elsif word.match /^[^aeiouAEIOU]{1}/
       pig_latin = word_array.concat(word_array.slice!(0,1)).join+'ay'
       pig_latin_array << pig_latin
      end

    else
      pig_latin = word + 'way'
      pig_latin_array << pig_latin
    end
  end
  pig_latin_array.join(' ')
end

end
