
class PigLatinizer

  attr_accessor :user_phrase

  def piglatinize(user_phrase)
    if user_phrase.match(/^[^aeiouAEIOU]{2,}/)
      left = user_phrase.match(/^[^aeiouAEIOU]{2,}/)
      result = user_phrase.split(/^[^aeiouAEIOU]{2,}/)
      pig_latin = "#{result[1]}#{left}ay"
    elsif user_phrase.match(/^[^aeiouAEIOU]{1}/)
      left = user_phrase.match(/^[^aeiouAEIOU]{1}/)
      result = user_phrase.split(/^[^aeiouAEIOU]{1}/)
      pig_latin = "#{result[1]}#{left}ay"
     else
      pig_latin = "#{user_phrase}way"
    end
 	  pig_latin
  end

  def to_pig_latin(user_phrase)
  	sentence = user_phrase.split(" ")
  	pig_sentence = sentence.collect {|word| piglatinize(word)}
  	pig_sentence.join(" ")
  end
end
