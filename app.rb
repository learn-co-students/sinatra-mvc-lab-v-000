require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
      erb :user_input
    end
  


  post '/piglatinize' do
      
      @pig_text = params[:user_phrase]
      @latinizer = PigLatinizer.new
    
    erb :piglatinized

  end

end