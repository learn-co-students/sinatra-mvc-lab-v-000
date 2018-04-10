require 'pry'

class PigLatinizer
  attr_reader :text, :array

  def piglatinize(text)
    @text = text
    @array = @text.split(" ")

    latin = @array.collect do |word|
      latinize(word)
    end

    answer = latin.join(' ')
    answer
  end

  def latinize(word)
    if word.start_with?('a','e','i','o','u', 'A','E','I','O','U')
      word + 'way'
    else
      word_array = word.split(/(?=[aeiou])/)
      cons_cluster = []
      cons_cluster << word_array.first
      rest = word_array-cons_cluster
      latinword = rest.join + cons_cluster.join + 'ay'
      latinword
    end
  end

end
