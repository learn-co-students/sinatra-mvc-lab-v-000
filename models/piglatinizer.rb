class PigLatinizer
  # attr_accessor :word
  def piglatinize(word)
    if "aeiouAEIOU".include?(word[0])
      piglatin= "#{word}way"
    else
      word_arr = word.split("")
      first_consonant = word_arr[0]
      beginning_consonants = [first_consonant] #for now; may or may not be more beginning consonants
      word_arr.drop(1).each do |char|
        if "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".include?(char)
          beginning_consonants << char
        else
          break
        end
      end

      rest_of_the_word = word.slice(beginning_consonants.size, word.length)
      beginning_consonants = beginning_consonants.join("")
      piglatin = "#{rest_of_the_word}#{beginning_consonants}ay"
    end
    piglatin
  end

  def to_pig_latin(words)
    # words_arr = words.split(" ")
    # piggyd = words_arr.map do |word|
    #   piglatinize(word)
    # end
    # piggyd.join(" ")
    words.split(" ").map{|word| piglatinize(word)}.join(" ")
  end


end #ends class

# def piglatinize(word)
#
#   non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
#   vowels = ["a", "e", "i", "o", "u"]
#
#   if non_pig_latin_words.include?(word)
#     word
#   elsif vowels.include? word[0]
#     word << "ay"
#   else
#     consonants = ""
#     while !vowels.include?(word[0])
#       consonants << word[0]
#       word = word.split("")[1..-1].join
#     end
#     word + consonants + 'ay'
#   end
# end


=begin
  check if the word starts with a vowel
    if it does
      then just add ay to it and you're done.
  if the word starts with a consonant...
    have an array that stores just beginning of words, and store the first letter...
      check if the next letter is a consonant as well
        shove if so...
        then recurse back and check if the next letter is a consonant
        if not...
      end with an array of starting consonants, and the rest of the word...
        do the switch...and just add ay
=end
