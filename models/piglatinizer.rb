class PigLatinizer
  attr_reader :text, :sentence

  @text = []

  def initialize
  end

  def piglatinize(text)
    @sentence = ""
    @text = text.split
    @text.collect do |word|
      if word[0].match(/[aeiouAEIOU]/)
        @sentence = @sentence.concat("#{word.concat('way')} ")
      elsif !word[0].match(/[aeiouAEIOU]/) && !word[1].match(/[aeiouAEIOU]/) && !word[2].match(/[aeiouAEIOU]/)
        first_three_letters_plus_ay = word[0..2].concat("ay")
        word[0..2] = ""
        @sentence = @sentence.concat("#{word.concat(first_three_letters_plus_ay)} ")
      elsif !word[0].match(/[aeiouAEIOU]/) && !word[1].match(/[aeiouAEIOU]/)
        first_two_letters_plus_ay = word[0..1].concat("ay")
        word[0..1] = ""
        @sentence = @sentence.concat("#{word.concat(first_two_letters_plus_ay)} ")
      else
        first_letter_plus_ay = word[0].concat("ay")
        word[0] = ""
        @sentence = @sentence.concat("#{word.concat(first_letter_plus_ay)} ")
      end
    end
    @sentence.strip
  end

end
