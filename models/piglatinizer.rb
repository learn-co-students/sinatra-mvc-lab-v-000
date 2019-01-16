class PigLatinizer
  attr_accessor :text

  # def initialize
  #
  # end

  def piglatinize(text)
    text.split.collect do |word|
      first = word[0]
      first_two = word[0, 2]
      first_three = word[0, 3]
      if first.scan(/[aeoui]/i).join == first
        word << 'way'
      elsif first_three.scan(/[bcdfghjklmnpqrstvwxyz]/i).join == first_three
        word.gsub!(word[0, 3], "") << first_three << 'ay'
      elsif first_two.scan(/[bcdfghjklmnpqrstvwxyz]/i).join == first_two
        word.gsub!(word[0, 2], "") << first_two << 'ay'
      else
        word[0]= ""
        word << first << 'ay'
      end
    end.join(" ")
  end

end
