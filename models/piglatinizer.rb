class PigLatinizer

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]
    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

    @word = word

    if vowels.include?(@word[0])
      # "#{@word}ay"
      @word
    else
      case @word
      when condition

      end

    end

    # @vowels = @word.scan(/[aeoui]/)
    # require "pry" ; binding.pry
  end


    # @word.scan(/[aeoui]/)

end
