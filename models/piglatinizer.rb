class PigLatinizer

  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    arr = text.split
    new_arr = []
    arr.each do |word|
      if word[0].scan(/[aeoui]/i)[0]
        new_word = word + "way"
      else
        first_part = word[/\A[^aeoui]+/i]
        word.slice!(first_part)
        new_word = word + first_part + "ay"
      end
      new_arr << new_word
    end
    new_text = new_arr.join(" ")
    new_text
  end

end
