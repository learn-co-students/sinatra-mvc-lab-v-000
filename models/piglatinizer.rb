class PigLatinizer

  def initialize(user_input = "")
    @user_input = user_input
  end

  def piglatinize(word)
    new_word = ""
    case
    when word.downcase.match(/^[aeiou]/)
      new_word = word + "way"
    when word.downcase.match(/^[^aeiou]/)
      new_word = word.downcase.gsub(/(^[^aeiou]+)(.*)/,'\2\1ay')
    end
    word.downcase == word ? new_word : new_word.capitalize
  end

  def to_pig_latin(phrase)
    new_phrase = Array.new
    phrase.split().each do |word|
      new_phrase << piglatinize(word)
    end
    new_phrase.join(" ")
  end
end
