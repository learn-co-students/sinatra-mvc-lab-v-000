require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do

    erb :user_input
    end

    post "/piglatinize" do
      @input = PigLatinizer.new(params[:user_phrase])

      @converted_word = @input.determine

      erb :pig_latin
    end


end
