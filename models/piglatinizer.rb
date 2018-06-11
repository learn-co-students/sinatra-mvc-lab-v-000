class PigLatinizer
  
  attr_reader :text
  

  def piglatinize(text)
    array = text.split
    array.map do |word|
      if word.match(/^[aeiouAEIOU]/) != nil
        word << "way"
      elsif word.match(/^[a-zA-Z][AEIOUaeiou]/) != nil
          sliced = word.slice!(0)
          word << "#{sliced}ay"
      elsif word.match(/^[a-zA-Z][a-zA-Z][AEIOUaeiou]/) != nil
          sliced = word.slice!(0,2)
          word << "#{sliced}ay"
      elsif word.match(/^[a-zA-Z][A-Za-z][A-Za-z][AEIOUaeiou]/) !=nil 
          sliced = word.slice!(0,3)
          word << "#{sliced}ay"
        elsif word.match(/^[a-zA-Z][A-Za-z][A-Za-z][A-Za-z][AEIOUaeiou]/) !=nil 
          sliced = word.slice!(0,4)
          word << "#{sliced}ay"
      end
    end
    array.join(" ")
  end

  
end