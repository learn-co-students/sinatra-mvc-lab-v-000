class PigLatinizer

  attr_accessor :text

  def initialize
    # @text = text
  end

  def piglatinize(sentence)
    word_arr = sentence.split
    word_arr.map{|word| self.pl_single_word(word)}.join(" ")
  end

  def pl_single_word(word)
    if "aeiou".include?(word[0].downcase)
      answer = word + "way"
    else
      arr = word.split("")
      ending = []
      arr.each do |ch|
        if "aeiou".include?(ch)
          break
        else
          ending << ch
        end
      end
        answer = (arr.slice(ending.length..-1) + ending).join + "ay"
      end
      answer
    end
end
