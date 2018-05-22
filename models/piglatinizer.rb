class PigLatinizer

  def piglatinize(phrase)
    current = phrase.split(" ")

    current.map do |word|
      # If a word starts with a consonant and a vowel, put the first letter of the word at the end of the word and add "ay."
      if word =~ /\b[^aeiouAEIOU][aeiou]/
        consonant = word[0]
        stripped_word = word[1..-1].strip
        word.clear
        word << stripped_word << consonant << "ay"

      # If a word starts with two or more consonants move the consonants to the end of the word and add "ay."
      elsif word =~ /\b[^aeiouAEIOU]+/
        consonants = word.match(/\b[^aeiouAEIOU]+/)
        stripped_word = word.match(/[aeiouAEIOU][a-zA-Z]+|[a-zA-Z]$/)
        word.clear
        word << "#{stripped_word}#{consonants}ay"

      # If a word starts with a vowel add the word "way" at the end of the word.
      else word =~ /\b[aeiouAEIOU]/
        word << "way"
      end
    end
    current.join(" ")
  end

end