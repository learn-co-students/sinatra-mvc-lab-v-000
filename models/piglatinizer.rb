class PigLatinizer

    def piglatinize(user_phrase)
        arr = user_phrase.split(" ").collect do |word|
            if word.match(/^(str)|(spr)/im)
                suffix = "#{word.slice!(0..2)}ay"
            elsif word.match(/^((th)|(ph)|(st)|(sh)|(ch)|(tr)|(sm)|(sn)|(qu)|(sc)|(sk)|(sp)|(pr)|(wh)|(pl))/im)
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