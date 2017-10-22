require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinizer' do
    pl = PigLatinizer.new
    @piglatin = pl.sentence_to_pl(params[:user_phrase])
    erb :results
  end

end   # end of class