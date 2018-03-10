class PigLatinizer
  attr_accessor :phrase, :word


  def piglatinize(word) 
    @word = word
    if @word.downcase.match(/\A[aeiou]/)
      pig_word = @word.strip << "way"

    elsif @word.downcase.match(/\A[^aeiou]{3}/)
     array = @word.strip.split('')
     first_letter = array.shift
     second_letter = array.shift
     third_letter = array.shift

     pig_word = array << first_letter << second_letter << third_letter
     pig_word.join('') << "ay"


    elsif @word.downcase.match(/\A[^aeiou]{2}/)
     array = @word.strip.split('')
     first_letter = array.shift
     second_letter = array.shift

     pig_word = array << first_letter << second_letter
     pig_word.join('') << "ay"


    elsif @word.downcase.match(/\A[^aeiou]/)
      array = @word.strip.split('')
      first_letter = array.shift

      pig_word = array << first_letter
      pig_word.join('') << "ay"
    end
  end


  def to_pig_latin(phrase)
    @phrase = phrase
    pig_phrase = @phrase.split(' ').collect do |word|
      piglatinize(word)
    end
    pig_phrase.join(' ')
  end


end
