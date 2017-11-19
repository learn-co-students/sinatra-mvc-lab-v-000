class PigLatinizer

  def initialize(string = nil)
    @string = string
  end

  def piglatinize(string)
    arrayed = string.split("")
    arrayed_sentence = arrayed.map {|e| e.split("")}
    starts_with_vowel = string.start_with?("a","e","i","o","u","A","E","I","O","U")
    starts_with_consonant = string[0].downcase.match(/^[b-d|f-h|j-n|p-t|v-z]/) != nil

  if starts_with_vowel
    arrayed.join("") + "way"
  else
    i = 0
      arrayed.each do |e|
        if e.downcase.match(/^[b-d|f-h|j-n|p-t|v-z]/) != nil
          i = i + 1
        else
          break
        end
      end
      arrayed.rotate(i).join("") + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |e|
      piglatinize(e)
    end.join(" ")
  end

end

#OO Version below

# OO version below
# class PigLatinizer
#
#   def initialize(string = nil)
#     @string = string
#   end
#
#   def starts_with_consonant?
#     if @string.match(/^[b-d|f-h|j-n|p-t|v-z]/) != nil
#       true
#     else
#       false
#     end
#   end
#
#   def starts_with_vowel?
#     if @string.start_with?("a","e","i","o","u","A","E","I","O","U")
#       true
#     else
#       false
#     end
#   end
#
#   def piglatinize
#     arrayed = @string.split("")
#     arrayed_sentence = arrayed.map {|e| e.split("")}
#
#     if starts_with_vowel?
#       arrayed.join("") + "way"
#       else
#         i = 0
#           arrayed.each do |e|
#             if e.match(/^[b-d|f-h|j-n|p-t|v-z]/) != nil
#               i = i + 1
#             else
#               break
#             end
#           end
#           arrayed.rotate(i).join("") + "ay"
#       end
#     end
#
#   def to_pig_latin
#     @string.split(" ").map do |e|
#       piglatinize(e)
#     end.join(" ")
#   end
#
# end
