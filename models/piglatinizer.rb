class PigLatinizer

  attr_accessor :user_phrase, :capitalized

  def initialize
  end

  def piglatinize(user_phrase)
    @user_phrase = user_phrase
    format
    rearrange
    reformat
  end

  def format
    # if @user_phrase.scan(/[A-Z]/) == []
    #   @capitalized = false
    # else
    #   @capitalized = true
    # end
    @user_phrase = @user_phrase.split(" ")
  end

  def rearrange
    @user_phrase = @user_phrase.collect do |t|
      pre_vowel = t.scan(/^[bcdfgGhHjklmnpqrsStvwxyz]+/)[0]
      if pre_vowel != nil
        t << pre_vowel + "ay"
        s1 = pre_vowel.size
        s2 = t.size
        t = t.slice(s1...s2)
      else
        t << "way"
      end
    end
  end

  def reformat
    @user_phrase = @user_phrase.join(" ")
    # if @capitalized == true
    #   @user_phrase = @user_phrase.capitalize
    # else
    #   @user_phrase
    # end
  end


  # This is their way to do it:

  # def piglatinize(input_str)
  #   x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  #   puts x
  #   x
  # end
  #
  # private
  #
  # def consonant?(char)
  #   !char.match(/[aAeEiIoOuU]/)
  # end
  #
  # def piglatinize_word(word)
  #   # word starts with vowel
  #   if !consonant?(word[0])
  #     word = word + "w"
  #   # word starts with 3 consonants
  #   elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
  #     word = word.slice(3..-1) + word.slice(0,3)
  #   # word starts with 2 consonants
  #   elsif consonant?(word[0]) && consonant?(word[1])
  #     word = word.slice(2..-1) + word.slice(0,2)
  #   # word starts with 1 consonant
  #   else
  #     word = word.slice(1..-1) + word.slice(0)
  #   end
  #   word << "ay"
  # end
  #
  # def piglatinize_sentence(sentence)
  #   sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  # end

end
