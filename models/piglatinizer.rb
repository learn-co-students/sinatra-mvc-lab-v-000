class PigLatinizer
 
  def piglatinize(str)
    if str == "and" || str == "an" || str == "in"
      str
    elsif str.start_with?("a","e","i","o","u")
      str + "ay"
    else
      arr = str.split("")
      const = []
      i = 0
        until arr[i] == "a" || arr[i] == "e" || arr[i] == "i" || arr[i] == "o" || arr[i] == "u"
          const << arr[i]
          i += 1
        end
    new_arr = arr.drop(const.length)
    (new_arr << const << "ay").join("")
    end
  end
 
  def to_pig_latin(str)
    str = str.gsub(".", "")
    arr = str.split(" ")
    new_str = []
    arr.each do |word|
      if word.length > 1
        new_str << piglatinize(word)
      else
        new_str << word
      end
    end
    new_str.join(" ")
  end
end
