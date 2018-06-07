
class PigLatinizer

  def initialize
  end

  def piglatinize(str_words)
    arr = []
    arr2 = []

    i = 0
    words = str_words.split(" ")

    words.each do |word|

        word.each_char.with_index(1).map { |val,index|
        if 'aeiouAEIOU'.include?val
            i = index - 1
            break;
          end
        }

      str1 = word.slice(0,i)
      str2 = word.slice(i)
      str3 = word.slice(i, word.length)
      if(i === 0)

        str = "way"
      else
          str = "ay"
      end
      str4 =  str3 + str1 + str

      arr << str4

    end
    arr.join(" ")
  end

end
