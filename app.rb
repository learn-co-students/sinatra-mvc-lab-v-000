require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    @text = params[:user_phrase]
    pig = PigLatinizer.new
    @text = pig.to_pig_latin(@text).gsub(/[.]/,'')
    erb :piglatinize
  end
end