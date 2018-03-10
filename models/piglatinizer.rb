class PigLatinizer


  def piglatinize(input)
    if input[0].downcase.match(/[aeoui]/)
      input + "way"
    else
      input_partition = input.partition(/[aeiou]/)
      input_partition[1..-1].join + input_partition[0] + "ay"
    end
  end

    def to_pig_latin(sentence)
      sentence_array = sentence.split.map{ |word| word = piglatinize(word)  }
      sentence_array.join(" ")
    end



end
