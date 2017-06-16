class PigLatinizer

#----------------------------------------------------------------
#macros / attrs / etc.
attr_accessor :raw_text

def initialize (raw_text)
@raw_text = raw_text
end

CONSONANTS = "bcdfghjklmnpqrstvwxyz"
VOWELS = "aeoui"

#----------------------------------------------------------------
#instance

def pig_the_string
    binding.pry
    pigged_string = ""
    word_place = 1
    self.words.each {|word| 
                      pigged_string << pig_the_word(word)
                      
                      #just adds a space between all but last word
                      if word_place < self.words.count
                      pigged_string << " "
                      end
                      #then increments counter 
                      word_place += 1
                    }
pigged_string
end


def pig_the_word (word)
    
    if begins_with_vowel? (word)
        pigged_word = word << "ay"
    else
        pigged_word = consonant_swap(begins_with_how_many_consonants?(word), word) << "ay"
    end

pigged_word
end


def words
self.raw_text.split (" ")
end

def begins_with_vowel?(word)
VOWELS.include?(word.chars[0])
end

def begins_with_how_many_consonants? (word)
word.scan(/\A[bcdfghjklmnpqrstvwxyz]+/).first.length
end

def consonant_swap (length, word)
"#{word[length,word.length]}#{word[0,length]}"
end

#----------------------------------------------------------------
#class

#----------------------------------------------------------------
# private



#--eoc
end


