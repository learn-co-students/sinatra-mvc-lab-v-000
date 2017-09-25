class PigLatinizer
    attr_accessor :user_phrase

    def initialize(user_phrase)
        @user_phrase = user_phrase
    end

    def piglatinize 
        arr = @user_phrase.split(" ").collect do |word|
            if word.match(/^(str)/im)
                suffix = "#{word.slice!(0..2)}ay"
            elsif word.match(/^((th)|(ph)|(st)|(sh)|(ch)|(tr)|(sm)|(sn)|(qu)|(sc)|(sk)|(sp)|(pr)|(wh))/im)
                suffix = "#{word.slice!(0..1)}ay"
            elsif word.match(/^[aeiou]/im)
                suffix = "way"
            else
                suffix = "#{word.slice!(0)}ay"
            end
            word.concat(suffix)
        end
        arr.join(" ")
    end
end