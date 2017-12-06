class PigLatinizer
	attr_accessor :words


	def piglatinize(word)
		vowels = ["a", "e", "i", "o", "u", "y"]
    #if the first letter of a wrod is a vowel, add way to the end
		if vowels.include?(word[0].downcase)
			word + "way"

		elsif vowels.include?(word[1].downcase) #if the 2nd letter of a word is a vowel,
			array = word.scan(/\w/)   #this expression takes the word, then splits it into an array seperated by letters, example "word" becomes ["w","o","r","d"] and sets it to a variable called array
			array << array[0] + "ay"   #add the 1st letter + "ay" to the end of the array
			array.shift   #shift removes the 1st letter at position[0] from the array
			array.join    #join, adds the array back together
		elsif vowels.include?(word[2].downcase) #if the 3rd letter of a word is a vowel,
			array = word.scan(/\w/) #this expression takes the word, then splits it into an array seperated by letters, example "word" becomes ["w","o","r","d"] and sets it to a variable called array
			array << array[0] + array[1] + "ay" #add the 1st letter, 2nd letter + "ay" to the end of the array
			array.shift(2)  #shift(2) removes the 1st 2 letters at position[0] from the array
			array.join
		elsif vowels.include?(word[3].downcase)
			array = word.scan(/\w/)
			array << array[0] + array[1] + array[2] + "ay"
			array.shift(3)
			array.join
    	end
	end

#this method takes a phrase of words represented as 1 string, splitts it into an array of many words strings, iterates of the array with collect, then applies the piglatinize method over each word, then joins all of the words in the array back into a single string seperated by a space " "
	def to_pig_latin(phrase)
		phrase.split.collect{|word| piglatinize(word)}.join(" ")
	end
end
