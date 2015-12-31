class PigLatinizer

  def piglatinize (string)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    exceptions = ["a", "i", "and", "an", "in"]
    string = string.split(" ")
    string.each_with_index do |word, i|
      if word.length <= 1 || exceptions.include?(word)
        word
      else
        word = word.split(//)
        word.delete_if {|a| a == "."}
        if vowels.include?(word[0])
          word << "ay"
          string[i] = word.join
        else
          while !vowels.include?(word[0])
           letter = word.shift
           word << letter
          end
          word << "ay"
          string[i] = word.join
        end
      end
    end
    string[0]
  end

  def to_pig_latin (sent)
    sent = sent.split(" ")
    sent.map! do |a|
      piglatinize(a)
    end
    sent.join(" ")
  end

end