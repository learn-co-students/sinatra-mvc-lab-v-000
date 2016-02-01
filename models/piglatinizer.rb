class PigLatinizer 

  attr_accessor :text

  def initialize
    @text = text
  end

  # def piglatinize(word) 
  #   alpha = ('a'..'z').to_a
  #   vowels = %w[a e i o u]
  #   consonants = alpha - vowels

  #   if vowels.include?(word[0])
  #     "#{word}"
  #   elsif consonants.include?(word[0]) && consonants.include?(word[1])
  #     "#{word[2..-1]}#{word[0..1]}ay"
  #   elsif consonants.include?(word[0])
  #     "#{word[1..-1] + word[0] + 'ay'}"
  #   end
  # end

  # def to_pig_latin(phrase)
  #   phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
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


end #ends Class