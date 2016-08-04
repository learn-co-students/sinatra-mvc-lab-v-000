require 'pry'

class PigLatinizer

	attr_accessor :user_input

	def initialize(user_input)
		@user_input = user_input
	end

	def piglatinize
		input_array = @user_input.split(" ")
		new_array = []
		input_array.each do |word|
			if word.split(/([?=AEIOUaeiou])/).first.match(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/) != nil
				word_array = word.split(/([?=AEIOUaeiou])/)
				consonant_moved = word_array[1..-1] << word_array[0]
				add_way = consonant_moved << "way"
				arranged = add_way.join("")
			else
				arranged = word << "way"
			end
			new_array << arranged
		end
		new_array.join(" ")
	end

end