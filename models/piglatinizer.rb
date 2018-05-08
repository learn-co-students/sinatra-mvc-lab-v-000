class PigLatinizer

  attr_accessor :user_text

  def initialize
    @user_text = user_text
  end

  def piglatinize(user_text)
    text_array = user_text.split('')

    if user_text.include?(" ")
      piglatinize_a_sentence(user_text)

    elsif text_array[0].match(/[aeiouAEIOU]/)
      processed_string = "#{user_text}way"

    elsif !text_array[0].match(/[aeiouAEIOU]/) && !text_array[1].match(/[aeiouAEIOU]/) && !text_array[2].match(/[aeiouAEIOU]/)
      first_part = text_array[3..(text_array.length-1)].join
      second_part = text_array[0..2].join
      processed_string = "#{first_part}#{second_part.to_s}ay"

    elsif !text_array[0].match(/[aeiouAEIOU]/) && !text_array[1].match(/[aeiouAEIOU]/)
      first_part = text_array[2..(text_array.length-1)].join
      second_part = text_array[0..1].join
      processed_string = "#{first_part}#{second_part.to_s}ay"

    else
      first_part = text_array[1..(text_array.length-1)].join
      second_part = text_array.shift
      processed_string = "#{first_part}#{second_part.to_s}ay"
    end
  end

  def piglatinize_a_sentence(user_text)
    user_text.split.map do |w|
      piglatinize(w)
    end.join(" ")
  end

end
