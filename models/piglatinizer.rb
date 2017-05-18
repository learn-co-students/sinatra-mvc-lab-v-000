require 'pry'
class PigLatinizer
  def words(words)
    @words = words
  end
  @@vowels = ["a", "e", "i", "o", "u"]
  def consonant?(letter)
     !@@vowels.include?(letter.downcase)
  end
  def piglatinize(words)
    array = words.split("")
    if consonant?(array[0])
      index = 0
      array.each.with_index do |x,i|
        if index == 0 && !consonant?(x)
          index = i
          end
        end
        beginning_array = array.slice(0, index)
        end_of_array = array.slice(index, array.length)
        end_of_array.concat(beginning_array).push("ay").join
      else
        array.push("way").join
      end

    end
   def to_pig_latin(phrase)
      phrase.split.collect do |x|
        if x != " "
          piglatinize(x)
        end
      end.join(" ")
   end
    # if cluster?(words)
    #   new_array = array.slice(@@start_slice,array.length-1)
    #   new_array.push(array.slice(0,@@start_slice), "ay").join
    # elsif consonant?(words[0])
    #       first = array.shift
    #       array.push("#{first}ay").join
    # else
    #     array.push("way").join
    # end
end
