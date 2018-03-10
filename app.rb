require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    
    get '/' do 
        erb :user_input
    end
    
    post '/piglatinize' do 
        new_i = PigLatinizer.new 
        @new_instance = new_i.to_pig_latin(params[:phrase])
        "Pig Latinizer!"
    end
    
    
    
end