class PigLatinizer
  attr_reader :text

  def initialize
    # @text = text
  end

  def piglatinize(text)
    @text = text
    #split text into an array of words
    words = @text.split(" ")
    #collect pig latin versions of words
    pig_words = words.map do |word|
      #find first vowel as an index of the array ([word] per iteration)
      vowel_index = word.index("#{word.scan(/[AEIOUaeiou]/).first}") #first scanned vowel's index
      #slice! deletes and returns deleted content
      removed_portion = word.slice!(0,vowel_index) #remove form start until vowel (can => c)
      #take remaining portion and add removed_portion to end + ay(way depending on if first letter == vowel)
      #ex1:egg=> eggway --ex2:dck => uck + d + ay => uckday
      puts "#{vowel_index}"
      word << "#{removed_portion}#{"w" if vowel_index == 0}ay" #0 indicates first letter == vowel
    end
    #put pig words together as spaced text
    pig_words.join(" ")
  end

end
