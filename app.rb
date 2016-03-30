require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new
    @result = @piglatinized_text.to_pig_latin(params[:user_phrase])
    erb :piglatinizer
  end


end