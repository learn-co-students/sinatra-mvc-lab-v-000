class PigLatinizer
  attr_accessor :user_phrase

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end
  
  def piglatinize(user_phrase)
    words_array = user_phrase.split(" ")
    pig_latin = []
    words_array.each do |word|
      if %w(AEIOUaeiou).include?(word[0])
        pig_latinized = word << way
        pig_latin << pig_latinized
      elsif word.scan(/\A[^aeiou]/)
        consonant_count = word.split(/([AEIOUaeiou].*)/).first.length
        beginning = word.slice!(0, consonant_count)
        pig_latin = word + beginning + "ay"
      end
    end
    pig_latin
  end
end
