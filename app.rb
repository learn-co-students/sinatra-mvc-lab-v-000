require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    vals = params[:user_phrase]
    newquery = PigLatinizer.new
    @result = newquery.to_pig_latin(vals)
    erb :piglatinize
  end
end
