class PigLatinizer
  def piglatinize(user_phrase) 
    piglatinized_words = user_phrase.split(" ").collect do |word|
      word.index(/[aeiouAEIOU]/) == 0 ? word + "way" : (word + word[0..(word.index(/[aeiouAEIOU]/)-1)] + "ay")[word.index(/[aeiouAEIOU]/)..-1]
    end
    piglatinized_words.join(" ")
  end
end