class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

# p = PigLatinizer.new
#
# puts p.piglatinize("pork")

# class PigLatinize
#     attr_accessor :text
#     @@words = []
#
#     def initialize(text)
#       @text = text
#     end
#
#     def pigLatinize
#       @text.split(' ') do |word|
#         @@words << word
#           for word in words
#             word.split('')
#       end
#       end
#     end
# end
