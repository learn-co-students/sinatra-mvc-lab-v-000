class PigLatinizer

  def piglatinize(input)
    words = input.split(" ")
    vowels = ["a", "e", "i", "o", "u",]
    piglatin_words = []

    words.each do |word|
      letters = word.split("")
      if vowels.include?(letters.first.downcase)
        letters << "way"
        letters.join("")
      else
        until vowels.include?(letters.first) do
          first_letter = letters.shift
          letters << first_letter
        end
        letters << "ay"
      end
      
      piglatin_words << letters.join("")

    end
    piglatin_words.join(" ")

  end





end
