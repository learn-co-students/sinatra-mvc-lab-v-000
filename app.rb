require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    
    pl = PigLatinizer.new
    
    @text_to_latinize = pl.piglatinize(params[:user_phrase])
    
    erb :results
  end
end