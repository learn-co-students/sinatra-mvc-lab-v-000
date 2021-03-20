class PigLatinizer

  attr_reader :text, :converted_phrase
  


  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    @text = text
    words = @text.split
    converted_words = []

    words.each do |word|
      word_array = word.split("") #splits each word into inidividual letters
      latinized_order = [] #collects the letters in latinized order


      if vowels.include?(word_array[0])
        latinized_order = word_array + ["way"]
        converted_words << latinized_order.join('')
      else
        word_array.each_with_index do |letter, index|
          if vowels.include?(letter)
            latinized_order = word_array[index..-1] + word_array[0..index-1] + ["ay"]
            converted_words << latinized_order.join('')
            break
          end
        end #word_array.each_with_index
      end
    end #words.each
    @converted_phrase = converted_words.join(" ")
  end
end




# class PigLatinizer
# # a bunch of methods that will piglatinize words.
#   attr_reader :text, :converted_phrase
#
#
#
#   def initialize(text)
#     @text = text.downcase
#   end
#
#   def latinize
#     words = text.split
#     @converted_phrase = []
#     vowels = ["a", "e", "i", "o", "u"]
#
#     words.each do |word|
#       word_array = word.split("") #have an array of letters
#       latinized_order = [] #collects the letters in latinized order
#
#       if vowels.include?(word_array[0])
#         latinized_order = word_array + ["way"]
#         @converted_phrase << latinized_order.join('')
#       else
#         word_array.each_with_index do |letter, index|
#           if vowels.include?(letter)
#             latinized_order = word_array[index..-1] + word_array[0..index-1] + ["ay"]
#             @converted_phrase << latinized_order.join('')
#             break
#           end
#         end #word_array.each_with_index
#       end
#     end #words.each
#
#     @converted_phrase = @converted_phrase.join(" ").capitalize
#   end # .latinize
# end #class
