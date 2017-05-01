class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(phrase)
    all_words = phrase.split(" ")
    testarray = []
    all_words.each do |word|
      letters = word.split('')
      if (letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==1 ) && (letters[0..1].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==1 )
        puts "lettrs #{letters}"
        first_letter_pl = letters[0] + "ay"
        letters.delete_at(0)
        puts "new letters #{letters}"
        letters << first_letter_pl
        puts "newarray2 #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray #{testarray}"
      elsif (letters[0..2].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==2 ) && (letters[0..1].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==2 )
        fs_letter_pl = letters[0] + letters[1] + "ay"
        puts "#{fs_letter_pl}"
        letters_minus_two = letters.drop(2)
        puts "letters 2 #{letters_minus_two}"
        letters_minus_two << fs_letter_pl
        puts "letters_minus_two #{letters_minus_two}"
        testarray << letters_minus_two.join('')
        puts "testarray again #{testarray}"
      elsif (letters[0..2].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==3 )
        fst_letter_pl = letters[0] + letters[1] + letters[2] + "ay"
        puts "fst_letter_pl #{fst_letter_pl}"
        letters_minus_three = letters.drop(3)
        puts "letters 3 #{letters_minus_three}"
        letters_minus_three << fst_letter_pl
        puts "letters_minus_three #{letters_minus_three}"
        testarray << letters_minus_three.join('')
        puts "testarray again 3 #{testarray}"
      elsif (letters.count > 1) && (letters[0].downcase.scan(/[aeiouy]/).count == 1)
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"
        letters << "way"
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"
      elsif (letters[0].downcase.scan(/[i]/).count ==1 ) && (letters.count == 1)
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"
        first_letter_pl = letters[0] + "way"
        letters.delete_at(0)
        letters << first_letter_pl
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"
      elsif (letters[0].downcase.scan(/[a]/).count ==1 ) && (letters.count == 1)
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"
        first_letter_pl = letters[0] + "way"
        letters.delete_at(0)
        letters << first_letter_pl
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"


      end
    end
    testarray.join(' ')
  end

  def to_pig_latin(phrase)
    all_words = phrase.split(" ")
    testarray = []
    all_words.each do |word|
      letters = word.split('')
      if (letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==1 ) && (letters[0..1].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==1 )
        puts "lettrs #{letters}"
        first_letter_pl = letters[0] + "ay"
        letters.delete_at(0)
        puts "new letters #{letters}"
        letters << first_letter_pl
        puts "newarray2 #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray #{testarray}"
      elsif (letters[0..2].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==2 ) && (letters[0..1].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==2 )
        fs_letter_pl = letters[0] + letters[1] + "ay"
        puts "#{fs_letter_pl}"
        letters_minus_two = letters.drop(2)
        puts "letters 2 #{letters_minus_two}"
        letters_minus_two << fs_letter_pl
        puts "letters_minus_two #{letters_minus_two}"
        testarray << letters_minus_two.join('')
        puts "testarray again #{testarray}"
      elsif (letters[0..2].join(',').downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count ==3 )
        fst_letter_pl = letters[0] + letters[1] + letters[2] + "ay"
        puts "fst_letter_pl #{fst_letter_pl}"
        letters_minus_three = letters.drop(3)
        puts "letters 3 #{letters_minus_three}"
        letters_minus_three << fst_letter_pl
        puts "letters_minus_three #{letters_minus_three}"
        testarray << letters_minus_three.join('')
        puts "testarray again 3 #{testarray}"
      elsif (letters.count > 1) && (letters[0].downcase.scan(/[aeiouy]/).count == 1)
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"

        letters << "way"
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"
      elsif (letters.count == 1) && (letters[0].downcase.scan(/[i]/).count ==1 )
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"
        first_letter_pl = letters[0] + "way"
        letters.delete_at(0)
        letters << first_letter_pl
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"
      elsif (letters.count == 1) && (letters[0].downcase.scan(/[a]/).count ==1 )
        phrase.downcase.scan(/[aeoui]/).count
        puts "lettrs vowels #{letters}"
        first_letter_pl = letters[0] + "way"
        letters.delete_at(0)
        letters << first_letter_pl
        puts "newarray2 vowel #{letters.join('')}"
        testarray << letters.join('')
        puts "testarray vowel #{testarray}"
      end
    end
    testarray.join(' ')
  end

  #def count_of_vowels
  #  @text.downcase.scan(/[aeoui]/).count
  #end


end
#your text analyzer model code will go here.
