require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :user_input
  end

post '/piglatinize' do
  new_phrase = PigLatinizer.new
  @piglatin_text = new_phrase.to_pig_latin(params[:user_phrase])
  erb :results
end

get '/piglatinize' do
  erb :results
end

end
