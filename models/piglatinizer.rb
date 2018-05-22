class PigLatinizer

  # def initialize(phrase)
  #   @phrase = phrase
  # end

  def piglatinize(phrase)
    current = phrase.split(" ")

    current.map do |word|

      # If a word starts with a consonant and a vowel, put the first letter of the word at the end of the word and add "ay."
      if word =~ /\b[^aeiouAEIOU][aeiou]/
        consonant = word[0]
        stripped_word = word[1..-1].strip
        word.clear
        word << stripped_word << consonant << "ay"

      # If a word starts with two consonants move the two consonants to the end of the word and add "ay."
      elsif word =~ /\b[^aeiouAEIOU][^aeiou]/
        consonants = word[0..1]
        stripped_word = word[2..-1].strip
        word.clear
        word << stripped_word << consonants << "ay"

      # If a word starts with a vowel add the word "way" at the end of the word.
      elsif word =~ /\b[aeiouAEIOU]/
        word << "way"
      end
    end
    @phrase = current.join(" ")
  end

end