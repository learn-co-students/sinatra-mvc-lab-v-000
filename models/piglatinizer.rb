class PigLatinizer

  def initialize
  end
  
  def to_pig_latin(user_phrase)
      words_array = user_phrase.split(" ")
      pig_latin = []
      words_array.each do |word|
          pig_latin << piglatinize(word)
      end
      pig_latin.join(" ")
    end

  def piglatinize(word)
    if word.start_with?('a','e','i','o','u', 'A', 'E', 'O', 'I', 'U')  
      pig_latinized = word << "way"
    elsif word.scan(/\A[^AEIOUaeiou]/)
      consonant_count = word.split(/([AEIOUaeiou].*)/).first.length
      beginning = word.slice!(0, consonant_count)
      pig_latinized = word + beginning + "ay"
    end
    pig_latinized
  end
  
end