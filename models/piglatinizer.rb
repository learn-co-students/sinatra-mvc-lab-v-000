class PigLatinizer


   def to_pig_latin(phrase)
     words = phrase.split(" ")
     words.collect {|w| piglatinize(w)}.join(" ")
     # binding.pry
   end

   def piglatinize(word)
     @word = word
     if (start_with_vowels?)
       word = piglatin_vowel
     elsif (start_with_consonant?)
       word = piglatin_constant
     elsif (start_with_consonant_cluster?)
       word = piglatin_constant_cluster
     end
     word
   end

   def start_with_consonant?
     #binding.pry
       consonant_word = @word.downcase
       consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
       consonants.any? { |c| consonant_word.start_with?(c) }
   end

    def piglatin_constant
      split_words = @word.split /([aeiou].*)/
      first_letter = split_words[0]
      rest_of_word = split_words[1]
      "#{rest_of_word}#{first_letter}ay"
    end

    def start_with_consonant_cluster?
      cluster_word = @word.downcase
      @consotant_clusters = ["spr", "str", "sm", "sh", "th", "ch", "ph", "qu", "wh", "pl", "pr", "sk", "st", "br", "cl", "dr", "fk", "fr", "gl"]
      consonant_clusters.any? { |cluster| cluster_word.start_with?(cluster) }
    end

    def piglatin_constant_cluster
      @consonant_clusters.find do  |cluster|
        split_words = @word.split(cluster)
        cluster_letters = split_words[0]
        rest_of_word = split_words[1]
      end
      "#{rest_of_word}#{cluster_letters}ay"
    end

    def start_with_vowels?
      vowel_word = @word.downcase
      vowels = ["a", "e", "i", "o", "u"]
      vowels.any? { |v| vowel_word.start_with?(v) }
    end

    def piglatin_vowel
        "#{@word}way"
    end

 end
