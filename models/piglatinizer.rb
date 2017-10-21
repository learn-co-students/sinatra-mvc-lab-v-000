class PigLatinizer

  def piglatinize(word)
  vowels = %w{a e i o u}
  # non_pig_latin_words = ["me", "to", "too", "a", "an", "in", "and", "on"]
  vowels = ["a", "e", "i", "o", "u"]
    # if non_pig_latin_words.include?(word)
    #   word
    if vowels.include? word[0].downcase
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0].downcase)
        # binding.pry
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

  #   array = @user_phrase.split(" ")
  #   new_array = array.collect do |word|
  #     word.split.each do |letter|
  #       if letter[0] == /[aeoui]/
  #         letter[0].delete
  #       end
  #       word+"ay"
  #   end
  #   new_array.join(" ")
  # end


  # def initialize(user_phrase)
  #   @user_phrase = user_phrase
  # end
#   def piglatinize
#     vowels = %w{a e i o u}
#     user_phrase.gsub(/(\A|\s)\w+/) do |str|
#             str.strip!
#         while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
#             str += str[0]
#             str = str[1..-1]
#         end
#         str  = ' ' + str + 'ay'
#     end.strip
# end
end
