class PigLatinizer

  def piglatinize(word)
    # create a method 'piglatinize' that splits the word
    # then converts to pig latin.
    # create an array of non-piglatin words and one of
    # vowels for reference.

    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    if vowels.include?(word[0])
      word << "way"
      word
    else
      new_word = ""
      while !vowels.include?(word[0])
        new_word << word.slice!(0)
      end
      word.insert(-1, new_word).insert(-1, "ay")
    end
  end

  def to_pig_latin(string)
    words = string.split.each {|word| piglatinize(word)}
    words.join(" ")
    # this will be called by the post method in app.rb:
    # create a method 'to_pig_latin' that splits the
    # words in a string and uses #piglatinize on each
    # to convert to pig latin.
  end
end
