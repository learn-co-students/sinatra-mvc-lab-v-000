require 'pry'
class PigLatinizer


  def piglatinize(string)
    vowels = ['a', 'e', 'i', 'o', 'u']
    results = []

    words = string.split(" ")

    words.collect do |word|
      if vowels.include? word[0]
        results << word + 'way'
      elsif !vowels.include? word[0]
        results << word.sub(word[0], '') + word[0] + 'ay'
      else 
        puts "suck it"
      end
      results.join(', ')
    end

  end

end
