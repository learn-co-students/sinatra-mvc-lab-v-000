class PigLatinizer

  attr_accessor :text

  def initialize
    @text = text
  end

#   def piglatinize(word)
#    vowels = %w{a e i o u AEIOU}
#    consonants = %w{b c d f g h j k l m n p q r s t v w x y z BCDFGHJKLMNPQRSTVWXYZ}

#     a = word.split.map do |word| 
#         if vowels.include?(word[0]) && word.length > 2 && word != "and"
#           word  "ay"
#         elsif word[0..1] == "qu"
#           word[2..-1]  "quay"
#         elsif word[0..2] == "sch"
#           word[3..-1]  "schay"
#         elsif word[0..2] == "squ"
#           word[3..-1]  "squay"
#         elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
#           word[3..-1]  word[0..2]  "ay"
#         elsif consonants.include?(word[0]) && consonants.include?(word[1])
#           word[2..-1]  word[0..1]  "ay"
#         elsif consonants.include?(word[0])
#           word[1..-1]  word[0]  "ay"
#         end
#     end

#     a.join(" ")
 
#   end

# def to_pig_latin(word)
#   string = piglatinize(word)
#   string
# end

def piglatinize(word)
     if !word.scan(/\A[aeiou]/i).empty? 
       word << "ay"
     else
       slice = word.scan(/\A[^aeiou]+/i).first
       word.sub!(slice, "") << "#{slice}ay"
     end
   end
 
   def to_pig_latin(phrase)
     arr = phrase.chomp(".").split(" ")
     arr.map do |word|
       piglatinize(word)
     end.join(" ")
   end




end ## class end