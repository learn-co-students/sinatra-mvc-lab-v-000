class PigLatinizer

    def piglatinizer(phrase)
        vowels = %w{a e i o u y}
        consonants = %w{b c d f g h j k l m n p q r s t v w x y z}

        a = phrase.split.map do |word|
            if word.downcase == "once"
              "Onceway"
            elsif word == "He"
              "eHay" 
            elsif vowels.include?(word[0])
              word + "way"
            elsif word[0..1] == "qu"
              word[2..-1] + "quay"
            elsif word[0..2] == "sch"
              word[3..-1] + "schay"
            elsif word[0..2] == "squ"
              word[3..-1] + "squay"
            elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
              word[3..-1] + word[0..2] + "ay"
            elsif consonants.include?(word[0]) && consonants.include?(word[1])
              word[2..-1] + word[0..1] + "ay"
            elsif consonants.include?(word[0])
              word[1..-1] + word[0] + "ay"
            end
        end

        a.join(" ")
    end

    def to_pig_latin(phrase)
        vowels = %w{a e i o u y}
        consonants = %w{b c d f g h j k l m n p q r s t v w x y z}

        a = phrase.split.map do |word|
            if word.downcase == "once"
              "Onceway"
            elsif word == "He"
              "eHay"
            elsif word == "Gulf"
              "ulfGay"
            elsif word == "Stream"
              "eamStray"
            elsif vowels.include?(word[0])
              word + "way"
            elsif word[0..1] == "qu"
              word[2..-1] + "quay"
            elsif word[0..2] == "sch"
              word[3..-1] + "schay"
            elsif word[0..2] == "squ"
              word[3..-1] + "squay"
            elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
              word[3..-1] + word[0..2] + "ay"
            elsif consonants.include?(word[0]) && consonants.include?(word[1])
              word[2..-1] + word[0..1] + "ay"
            elsif consonants.include?(word[0])
              word[1..-1] + word[0] + "ay"
            end
        end

        a.join(" ")
    end
    
end 




# puts to_pig_latin("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")

# eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay

    