class PigLatinizer
  def piglatinize(phrase)
    if phrase.downcase.match(/\A[aeiou]/)
      # If the lowercase version of the string submitted by user begins with a vowel character,
      # a MatchData object is returned (a truthy value), and the code below consequently executes.
      # If no match is found, nil (falsey value) is returned, and we move onto the next conditional logic clause
       "#{phrase}" << "way" # shovel "way" onto string, thereby concatenating the 2 strings
    elsif phrase.match(/\A[a-zA-Z && [^aeiou]]{3}/)
      phrase.split("").rotate(3).join << "ay"
      # In English, 3 is the maximum number of consecutive consonants that can be found at the start of a word
      # Here, the order of my conditional logic statements matters b/c Ruby will stop after it finds the first match
      # I call #split on string phrase submitted to return an array of string letters that compose the phrase
      # I then call #rotate on the array of string letters, passing in the argument of 3 because I want the element at index 3 (i.e. the 4th letter) to be the first element of the array
      # Then I call #join to join the string letter elements back into 1 string word and push "ay" onto the end
    elsif phrase.match(/\A[a-zA-Z && [^aeiou]]{2}/) # check if user's string starts with 2 consecutive consonants
      phrase.split("").rotate(2).join << "ay"
      # I call #split on the string phrase submitted to return an array of string letters that compose the phrase
      # I then call #rotate on the array of string letters, passing in the argument of 2 because I want the element at index 2 (i.e. the 3rd letter) to be the first element of the array
      # I then call #join to join the string letter elements back into 1 string and
      # concatenate the strings i.e. push "ay" onto the end to complete the Pig Latinization!
    elsif phrase.match(/\A[a-zA-Z && [^aeiou]]/) # check if user's string starts with 1 consonant
      phrase.split("").rotate.join << "ay"
    end
  end

  def to_pig_latin(sentence)
    # Instance method #to_pig_latin accepts the string sentence submitted by user as an argument.
    array = sentence.split(" ")
    # I call the #split method on the string sentence to split the string at the spaces between words
    # Example:
    # sentence = "My name is Jenna Ariele Leopold"
    # array = ["My", "name", "is", "Jenna", "Ariele", "Leopold"]
    array.map {|string| piglatinize(string)}.join(" ")
    # Calling #map invokes the block once on each array element and returns an array of values returned by the block
    # For each string word element in the array,
    # call #piglatinize instance method on implicit self - the piglatinizer instance since we're in instance scope),
    # passing in each string element as argument
    # An array of piglatinized string words is returned. Example:
    # which I then join with a space in between to complete the sentence rendered in browser:
    # example: Myay amenay isway ennaJay Arieleway eopoldLay
  end
end
