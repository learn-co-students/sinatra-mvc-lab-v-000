class PigLatinizer
  attr_reader :user_phrase

  def initialize
    @user_phrase = user_phrase
  end

  def piglatinize(word)
    if word[0].scan(/[aeiouAEIOU]/) != []
      word += "way"
    else
      index_of_vow = word.index(/[aeiouAEIOU]/)
      after_vow = word.slice(index_of_vow..word.size)
      before_vow = word.slice(0..index_of_vow - 1)
      piglatin_word = after_vow + before_vow + "ay"
    end
  end

  def to_pig_latin(user_phrase)
    words = user_phrase.split(" ")
    translated_words = words.collect!{ |word| piglatinize(word)}
    translated_words.join(" ")
  end
end
