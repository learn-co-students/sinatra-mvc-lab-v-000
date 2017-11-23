require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @output = PigLatinizer.new(params[:user_phrase]).to_pig_latin
    erb :results
  end

end
