class PigLatinizer

  attr_reader :text

    def piglatinize(text)
        text.split.map do |word|
          if /\A[aeiou]/i.match(word)
            "#{word}way"
          else
            cons = word.split(/[aeiou]/).first
            "#{word.sub(cons,"")}#{cons}ay"
          end
          end.join(' ')
        end

      def to_pig_latin(text)
        piglatinize(text)
      end

end
