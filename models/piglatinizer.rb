class PigLatinizer

    def piglatinize(text)
      if starts_with_vowel?(text)
        text + "way"
      elsif has_l_r_p_k_t_or_h_as_second_letter?(text)
        if starts_with_spr_or_str(text)
          text.slice(3, text.length - 1) + text.slice(0, 3) + "ay"
        else
          text.slice(2, text.length - 1) + text.slice(0, 2) + "ay"
        end
      else
        text.slice(1, text.length - 1) + text.slice(0) + "ay"
      end
    end

    def to_pig_latin(text)
      string = text.split(' ')
      pig_string = string.collect do |word|
        piglatinize(word)
      end
      pig_string.join(' ') 
    end

    def starts_with_vowel?(text)
      text.slice(0).capitalize == "A" || text.slice(0).capitalize == "E" || text.slice(0).capitalize == "I" || text.slice(0).capitalize == "O" || text.slice(0).capitalize == "U"
    end

    def has_l_r_p_k_t_or_h_as_second_letter?(text)
      text.slice(1).capitalize == "T" || text.slice(1).capitalize == "K" || text.slice(1).capitalize == "P" || text.slice(1).capitalize == "L" || text.slice(1).capitalize == "H" || text.slice(1).capitalize == "R"
    end

    def starts_with_spr_or_str(text)
      text.slice(0, 3).upcase == "SPR" || text.slice(0, 3).upcase == "STR"
    end
end