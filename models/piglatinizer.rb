class PigLatinizer
    SUFFIX = 'ay'
    NO_LEADING_CONSONANTS_SUFFIX = 'way'

    def piglatinize(word)
        first_vowel_index = word =~ /[aeiou]/i

        if 0 == first_vowel_index
            word += NO_LEADING_CONSONANTS_SUFFIX
        else 
            leading_consonants = word.slice!(0...first_vowel_index)
            word += leading_consonants
            word += SUFFIX
        end
    end

    def to_pig_latin(sentence)
        sentence.split(' ').collect do |word|
            self.piglatinize(word)
        end.join(' ')
    end
end