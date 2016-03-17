class PigLatinizer


  def piglatinize(text)
    if /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ === text[0] && /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ === text[1] && /[aeoui]/  === text[2]
        array = text.split ""
        if array[-1] == "."
          array.pop
        end
        array = array.drop(2)
        array << text[0]
        array << text[1]
        array = array.join
        latin = array + "ay"
    elsif /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ === text[0] && /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ === text[1] && /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ === text[2]
        array = text.split ""
        if array[-1] == "."
          array.pop
        end
        array = array.drop(3)
        array << text[0]
        array << text[1]
        array << text[2]
        array = array.join
        latin = array + "ay"
    elsif /[aeoui]/  === text[0]
        array = text.split ""
        if array[-1] == "."
          array.pop
        end
        array = array.join
        latin = array + "ay"
    else
      array = text.split ""
      if array[-1] == "."
          array.pop
      end
      first_letter = array.shift
      array << first_letter
      array = array.join
      latin = array + "ay"
    end
  end

  def to_pig_latin(text)
    array = text.split " "
    new = array.collect {|word|
      if word.length == 1 || word == "an" || word == "in" || word == "and"
        word
      else
        x = PigLatinizer.new
        x.piglatinize(word)
      end
    }
    array = new.join " "
  end

end