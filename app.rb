require_relative 'config/environment'
#require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do 
        @pig_latin_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
        #create an instance of the 
        #PigLatinize class to convert 
        #your user input to Pig Latin.
        erb :results
    end
end