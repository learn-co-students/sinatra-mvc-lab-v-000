require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_input = PigLatinizer.new
    @piglatin = new_input.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
