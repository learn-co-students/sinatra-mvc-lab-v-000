class PigLatinizer
  def piglatinize(string)
    string.split.collect do |word|
      if word.match(/\A[^aoeuiAOEUI]{2,}/)
        word[word.scan(/\A[^aoeuiAOEUI]{2,}/).join.size ..-1] + word[0..word.scan(/\A[^aoeuiAOEUI]{2,}/).join.size - 1] + "ay"
      elsif word.match(/\A[aoeuiAOEUI]/)
        word + "way"
      else
        word[1..-1] + word[0] + "ay"
      end
    end.join(" ")
  end
end
