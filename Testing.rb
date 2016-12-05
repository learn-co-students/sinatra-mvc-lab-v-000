  require 'pry'
  def piglatinize(schttoningham)
    word = schttoningham
    binding.pry
    vowels = %w[a e i o u A E I O U]
    if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
      word << "way" 
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")
        word.shift
        word = word.join()
      end
     porker =  word + consonants + "ay"
     puts porker
    end
  end
  