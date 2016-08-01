require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_text = PigLatinizer.new
    @pig_latin = @analyzed_text.to_pig_latin(params[:user_phrase])
    erb :user_output
  end

end
