class PigLatinizer

    include TextParser::InstanceMethods

    attr_reader :text, :words, :pig_latin, :vowels

    def initialize(text=nil)
        maintain_case
        @vowels = Set.new(['a','e', 'i', 'o', 'u'])
        @text = text if !!text
        @words = word_list if !!text
        @pig_latin = translate if !!text
    end

    def piglatinize(text)
        @text = text
        @words = word_list
        @pig_latin = translate
    end


    private

    def translate
        words.map do |w|
            transform_word(w)
        end.join(" ")
    end

    def transform_word(word)
        return "#{word}way" if !!word.match(/\A[aeiou]/i)
        suffix = word.match(/\A[^aeiou]+/i).to_s
        prefix = word[suffix.length, word.length]
        prefix + suffix + "ay"
    end


end




