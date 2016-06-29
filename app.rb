require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    original_text = params[:user_phrase]
    if original_text.split(" ").size == 1
      @piglatinized_text = PigLatinizer.new.piglatinize(original_text)
    else
      @piglatinized_text = PigLatinizer.new.to_pig_latin(original_text)
    end
    "#{@piglatinized_text}"
  end
end