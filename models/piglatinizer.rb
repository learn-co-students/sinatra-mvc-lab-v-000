class PigLatinizer

  def piglatinize(word)
    new_word = word.split("")
    if !word[0][/[aeiouAEIOU]/] && word[1][/[aeiouAEIOU]/]
      appendage = new_word.shift
      new_word << appendage << "ay"
    elsif word[0][/[aeiouAEIOU]/]
      new_word << "way"
    elsif !word[0][/[aeiouAEIOU]/] && !word[1][/[aeiouAEIOU]/] && word[2][/[aeiouAEIOU]/]
      appendage = new_word.shift << new_word.shift
      new_word << appendage << "ay"
    else
      appendage = new_word.shift << new_word.shift << new_word.shift
      new_word << appendage << "ay"
    end

# attempt to make the method not hard-coded:

#      appendage = ""
#      new_word.each_with_index do |letter, index|
#        until letter[/[aeiouAEIOU]/]
#          if !letter[/[aeiouAEIOU]/]
#            appendage << new_word.shift
#          end
#        end
#      end
#      new_word << appendage << "ay"
#    end
    new_word.join
  end

  def to_pig_latin(phrase)

    phrase.split.collect do |word|
      piglatinize(word)
    end.join(" ")

  end



end
