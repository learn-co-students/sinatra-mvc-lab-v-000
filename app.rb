require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p = PigLatinizer.new
    @latinized_text = p.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
