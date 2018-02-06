# class PigLatinizer

# def piglatinize(word)
#   word = word.downcase
#   str_arr = word.split("")
#   vowels = ["a", "e", "i", "o", 'u']
#   consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
#   @pig_latin = ''
#
#     if vowels.include?(str_arr[0])
#       str_arr << ["w", "a", "y"]
#       str_arr.join(",")
#       @pig_latin = str_arr.to_s
#     elsif consonants.include?(str_arr[0])
#       if consonants.include?(str_arr[1])
#         cut = str_arr.slice(0..1)
#         char_cut = char.slice(2..-1).push(cut)
#         char_cut = char_cut.unshift("a","y")
#         @pig_latin = char_cut.join(', ')
#       else
#         char_cut = str_arr.slice(1..-1).push(str_arr[0])
#         char_cut.push("a","y")
#         char_cut.join(', ')
#         @pig_latin = char_cut
#       end
#     end
# end

#   def piglatinize(word)
#     vowels = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u']
#     consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
#
#     word.each do |char|
#       #Words beginning with vowel: one just adds "way" or "yay" to the end (or just "ay").
#       if vowels.include?(word[0])
#         @pig_latin = word + 'way'

#       Words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end
#       elsif consonants.include?(word[0]) && consonants.include?(word[1])
#         @pig_latin = word[2..-1] + 'ay' + word[0..1]

#       Words beginning with consonant: all letters before the initial vowel are placed at the end. Then, "ay" is added.
#       elsif consonants.include?(word[0])
#         @pig_latin =  word[1..-1] + word[0] + 'ay'
#       else
#         @pig_latin =  word
#       end
#     end
#   end
# end

class PigLatinizer

  def split_str(word)
    word_arr = word.split(" ")
    word_arr
  end

  def piglatinize(word)
    first_split = word.split(/([aeiouAEIOU].*)/)[0]
    second_split = word.split(/([aeiouAEIOU].*)/)[1]
    if first_split == ""
      second_split + "way"
    else
      second_split + first_split + "ay"
    end
  end

  def to_pig_latin(word)
    arr = split_str(word)
    translation = []
    arr.each do |word|
      translation << piglatinize(word)
    end
    translation.join(" ")
  end
end
