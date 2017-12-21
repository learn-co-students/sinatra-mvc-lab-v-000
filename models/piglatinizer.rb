
class PigLatinizer
  attr_reader :text


  def piglatinize(words)
    if words.downcase[0].match(/a|e|i|o|u|A|E|I|O|U/)
              words = words << "way"
    elsif words.downcase[0].match(/[bcdfghjklmnpqrstvwxyz]/) && words.downcase[1].match(/[bcdfghjklmnpqrstvwxyz]/)&& words.downcase[2].match(/[bcdfghjklmnpqrstvwxyz]/)
        words = words[3..-1]<<words[0..2]
        words << "ay"
    elsif words.downcase[0].match(/[bcdfghjklmnpqrstvwxyz]/) && words.downcase[1].match(/[bcdfghjklmnpqrstvwxyz]/)
      words = words.downcase[2..-1]<<words[0..1]
      words << "ay"
    elsif words.downcase[0].match(/[bcdfghjklmnpqrstvwxyz]/)
      words = words.downcase[1..-1]<<words[0]
      words << "ay"
    end
    words
  end

# def piglatinize(words)
#
#   if words[0].match(/a|e|i|o|u|A|E|I|O|U/)
#             words = words << "way"
#
# end
#             beginningConsonantCount = 0
#             letterCount=0
#             if (letterCount < words.length) && words[letterCount].match(/[bcdfghjklmnpqrstvwxyz]/)
#                       beginningConsonantCount++
#                       letterCount++
#
#                       letterCount = words.length
#         words = words[beginningConsonantCount..-1] << words[0..(beginningConsonantCount-1)] << "ay"
#       end
#     end



def to_pig_latin(words)
  words.split(" ").collect{|word| piglatinize(word)}.join(" ")

end
end
