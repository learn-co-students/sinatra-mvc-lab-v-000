require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    variable= PigLatinizer.new
    @piglatinized_words = variable.to_pig_latin(params[:user_phrase])
    erb :results
  end

end